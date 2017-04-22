Welcome to this code to program an Altera Cylcone 4 external flash memory.

As ever the offcial documentation skips over a lot of things so this is here to clarify and better describe.

HOW TO USE THIS CODE WITH EP4CE6E22

1. Open Quartus Programmer
2. Add the file 'serial_loader.sof' after having selected your programming hardware
3. Program the device
4. Now delete 'serial_loader.sof' from the programmer window
5. Go File > Convert Programming Files
6. Select:
	- Output programming file, .jic
	- Configuration device, <your device>
	- Mode, <your mode>
	- Flash loader > Add device, EP4CE6
	- SOF Data > Add Sof Page, <your target sof> (the one you want in the flash)
7. Now hit generate (make sure you keep in mind the directory you have created it)
8. Go back to your Programmer window, add file, <your_file>.jic
9. Program and verify!

HOW TO USE THIS CODE WITH OTHER DEVICES

1. Create a new Quartus project targetted for your device, create a source file with the same name as the project
2. Search the IP library for with key work 'flash', double click on 'Altera Serial Flash Loader'
3. Give it a name, directory and select your target device if it's not alrteady there
4. Hit generate
5. Add the generated .qip file to the project, add the instantiation into the module (no io is needed), set the 'noe' signal to logic 0
6. Compile the project for the .sof
7. Go to 'HOW TO USE THIS CODE WITH EP4CE6E22' and enter your device name and parameters in place