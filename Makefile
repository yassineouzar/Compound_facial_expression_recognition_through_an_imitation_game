-include perso.mk


/tmp/youzar/logs:
	mkdir -p $@
working_directory:=./FER_FFT


daemon_run_debug: | /tmp/youzar/logs
	nohup nemiver promethe_debug compound_facial_expression_recognition.script compound_facial_expression_recognition.config compound_facial_expression_recognition_learning.res compound_facial_expression_recognition.dev ../Compound_FER_learning/Compound_FER_learning.gcd ../Compound_FER_learning -nCompound_FER_learning -b127.255.255.255 -ineuro-OptiPlex-9020-AIO:5148  --distant-terminal> /tmp/youzar/logs/Compound_FER_learning.log&

daemon_run: | /tmp/youzar/logs
	nohup promethe compound_facial_expression_recognition.script compound_facial_expression_recognition.config compound_facial_expression_recognition_learning.res compound_facial_expression_recognition.dev ../Compound_FER_learning/Compound_FER_learning.gcd ../Compound_FER_learning -nCompound_FER_learning -b127.255.255.255 -ineuro-OptiPlex-9020-AIO:5148  --distant-terminal> /tmp/youzar/logs/Compound_FER_learning.log&

run_debug:
	nemiver promethe_debug compound_facial_expression_recognition.script compound_facial_expression_recognition.config compound_facial_expression_recognition_learning.res compound_facial_expression_recognition.dev ../Compound_FER_learning/Compound_FER_learning.gcd ../Compound_FER_learning -nCompound_FER_learning -b127.255.255.255 -ineuro-OptiPlex-9020-AIO:5148  || echo -e "\a"

run_valgrind:
	valgrind promethe_debug compound_facial_expression_recognition.script compound_facial_expression_recognition.config compound_facial_expression_recognition_learning.res compound_facial_expression_recognition.dev ../Compound_FER_learning/Compound_FER_learning.gcd ../Compound_FER_learning -nCompound_FER_learning -b127.255.255.255 -ineuro-OptiPlex-9020-AIO:5148  || echo -e "\a"

run:
	promethe compound_facial_expression_recognition.script compound_facial_expression_recognition.config compound_facial_expression_recognition_learning.res compound_facial_expression_recognition.dev ../Compound_FER_learning/Compound_FER_learning.gcd ../Compound_FER_learning -nCompound_FER_learning -b127.255.255.255 -ineuro-OptiPlex-9020-AIO:5148  || echo -e "\a"
