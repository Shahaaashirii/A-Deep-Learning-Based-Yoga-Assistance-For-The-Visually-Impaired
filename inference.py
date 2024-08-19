import pyttsx3
from keras.models import load_model 
from DBConnection import Db
import speech_recognition as sr
recognizer = sr.Recognizer()


def inFrame(lst):
	if lst[28].visibility > 0.6 and lst[27].visibility > 0.6 and lst[15].visibility>0.6 and lst[16].visibility>0.6:
		return True 
	return False

model  = load_model("model.h5")

import cv2
import numpy as np
import mediapipe as mp
label = np.load("labels.npy")

startingpose="Mountainpose"

holistic = mp.solutions.pose
holis = holistic.Pose()
drawing = mp.solutions.drawing_utils

cap = cv2.VideoCapture(0)
im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\Mountainpose.jpg")
cv2.imshow("window", im)
cv2.waitKey(3000)

engine = pyttsx3.init()
engine.setProperty('rate', 145)
engine.say("try this pose")
engine.runAndWait()

while True:
	lst = []

	_, frm = cap.read()

	window = np.zeros((940,940,3), dtype="uint8")

	frm = cv2.flip(frm, 1)

	res = holis.process(cv2.cvtColor(frm, cv2.COLOR_BGR2RGB))

	frm = cv2.blur(frm, (4,4))
	if res.pose_landmarks and inFrame(res.pose_landmarks.landmark):
		for i in res.pose_landmarks.landmark:
			lst.append(i.x - res.pose_landmarks.landmark[0].x)
			lst.append(i.y - res.pose_landmarks.landmark[0].y)

		lst = np.array(lst).reshape(1,-1)

		p = model.predict(lst)
		pred = label[np.argmax(p)]
		# startingpose = 'mountainpose'

		if p[0][np.argmax(p)] > 0.9:
			print(p[0][np.argmax(p)],"score")
			print(pred,"result",startingpose)
			cv2.putText(window, pred , (180,180),cv2.FONT_ITALIC, 1.3, (0,255,0),2)


			# engine = pyttsx3.init()
			# engine.setProperty('rate', 145)
			# engine.say("Detected pose is" + pred)
			# engine.runAndWait()
			if startingpose != str(pred):
				engine = pyttsx3.init()
				engine.setProperty('rate', 145)
				engine.say("Your pose is wrong")
				engine.runAndWait()

				if startingpose == "Mountainpose":



					im = cv2.imread("C:\\Users\\finalyearproject\yoga-main\\images\\Mountainpose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					engine = pyttsx3.init()
					engine.setProperty('rate', 145)
					engine.say("Mountain Pose: Stand tall with feet hip-width apart, arms by sides, palms facing forward, and focus on grounding feet while lengthening spine")
					engine.runAndWait()





				elif startingpose == "urdhvahastasana":

					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\urdhvahastasana.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					engine = pyttsx3.init()
					engine.setProperty('rate', 145)
					engine.say("Urdhva Hastasana: Stand tall, inhale arms overhead with palms facing each other or touching, and lengthen through the sides of the body while keeping shoulders relaxed.")
					engine.runAndWait()


				elif startingpose == "treepose":
					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\Treepose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					engine = pyttsx3.init()
					engine.setProperty('rate', 145)
					engine.say(""""Stand on one leg, bend the other knee, place foot on inner thigh or calf, hands in prayer position at chest, and focus on balance and stability.""")
					engine.runAndWait()

				elif startingpose == "warriorpose":
					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\warriorpose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					engine = pyttsx3.init()
					engine.setProperty('rate', 145)
					engine.say("""Warrior Pose: Step one foot back, bend front knee over ankle, extend arms parallel to the floor, torso facing forward, and gaze over front fingertips""")
					engine.runAndWait()

				elif startingpose == "lotuspose":

					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\lotuspose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					engine = pyttsx3.init()
					engine.setProperty('rate', 145)
					engine.say(""""To practice Lotus Pose, start in a comfortable seated position on the floor with your legs extended in front of you.
					 Bend your right knee and bring your right foot towards your left hip crease, allowing the sole of your right foot to face upward. 
					.""")
					engine.runAndWait()
			else:
				engine = pyttsx3.init()
				engine.setProperty('rate', 145)
				engine.say("Your pose  is ok. Give me next pose to check or tell me tip related to this pose")
				engine.runAndWait()
				# startingpose = "mountainpose"
				a=1
				while  a==1:
					with sr.Microphone() as source:
						print("Listening for command...")
						recognizer.adjust_for_ambient_noise(source)
						audio = recognizer.listen(source)
					try:
						command = recognizer.recognize_google(audio).lower()
						print("User command:", command)
						if 'help' in command:
							a=2

							print("tip")
							db=Db()
							qry="SELECT `description` FROM `myapp_yogatips` WHERE `title`='"+startingpose+"'"
							resa= db.select(qry)
							if len(resa)>0:
								res2= resa[0]['description']
								engine = pyttsx3.init()
								engine.setProperty('rate', 145)
								engine.say(res2)
								engine.runAndWait()
							else:
								resa = "No tip in databse"
								engine = pyttsx3.init()
								engine.setProperty('rate', 145)
								engine.say(resa)
								engine.runAndWait()

						elif 'yoga' in command:
							a=2

						elif 'exit' in command:
							a=2
							engine = pyttsx3.init()
							engine.setProperty('rate', 145)
							engine.say("Closing Application")
							engine.runAndWait()
							exit(0)
							break
							pass
						# else:
						# 	a=2
						# 	print("else")
						# 	pass
					except sr.UnknownValueError:
						print("Could not understand audio")
					except sr.RequestError as e:
						print("Error: {0}".format(e))

				if startingpose== "Mountainpose":

					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\Mountainpose.jpg")
					cv2.imshow("window", im)
					# cv2.+99999999999999999999999------------------------------------------------------------------------------------------------------------------------waitKey(3000)
					startingpose = "treepose"

				elif startingpose=="treepose":

					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\Treepose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)
					startingpose="urdhvahastasana"
				# elif startingpose=="raisedhandpose":
                #
				# 	im = cv2.imread("C:\\Users\\shaha\\Music\\yogapose_final\\yoga-main\\images\\raisedhandpose.jpg")
				# 	cv2.imshow("window", im)
				# 	cv2.waitKey(3000)
				# 	startingpose="halfmoon"



				elif startingpose=="urdhvahastasana":

					im = cv2.imread("C:\\finalyearproject\\images\\urdhvahastasana.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)


					startingpose="warriorpose"


				elif startingpose=="warriorpose":

					im = cv2.imread("C:\\finalyearproject\\images\\warriorpose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					startingpose="lotuspose"
				elif startingpose=="lotuspose":

					im = cv2.imread("C:\\finalyearproject\\yoga-main\\images\\lotuspose.jpg")
					cv2.imshow("window", im)
					cv2.waitKey(3000)

					startingpose="Mountainpose"



				engine = pyttsx3.init()
				engine.setProperty('rate', 145)
				engine.say("try this pose "+ startingpose)
				engine.runAndWait()

		else:
			print(pred, "result")
			cv2.putText(window, pred, (180, 180), cv2.FONT_ITALIC, 1.3, (0, 255, 0), 2)





			cv2.putText(window, "Pose is either wrong not trained" , (100,180),cv2.FONT_ITALIC, 1.8, (0,0,255),3)

	else: 
		cv2.putText(frm, "Make Sure Full body visible", (100,450), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (0,0,255),3)

		
	drawing.draw_landmarks(frm, res.pose_landmarks, holistic.POSE_CONNECTIONS,
							connection_drawing_spec=drawing.DrawingSpec(color=(255,255,255), thickness=6 ),
							 landmark_drawing_spec=drawing.DrawingSpec(color=(0,0,255), circle_radius=3, thickness=3))


	# window[120:700, 170:810, :] = cv2.resize(frm, (640, 480))

	cv2.imshow("window", frm)

	if cv2.waitKey(1) == 27:
		cv2.destroyAllWindows()
		cap.release()
		break