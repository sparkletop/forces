SynthDef(\laggy, {
	arg gate = 1, freq = 440, amp = 0.7,
	lag = 10, pan = 0, out = 0;
	var sig, env;
	env = EnvGen.ar(Env.asr(lag, 1, lag), gate, doneAction: 2);
	sig = SinOsc.ar(freq) * env;
	sig = Pan2.ar(sig, pan, amp);
	Out.ar(out, sig);
}, [0] ++ (10!5)).add;