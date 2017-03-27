<?xml version="1.0" encoding="UTF-8"?>
<html doctype>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1.0"/>
		<title>DYOL: Design Your Own Language</title>
		<link href="../www/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<hr/>
		<picdir>../www</picdir>
		<pic card>
			<title>Access Modifier</title>
			<text>Annotate components with information about how others are allowed or not allowed to access them. Access can be limited by <a href="#Inheritance">inheritance</a> (<em>protected</em> in C++), <a href="#Module">modular</a> structure (<em>internal</em> in C#), etc. The most popular modifiers are <em>public</em> (everyone welcome) and <em>private</em> (fully restricted).</text>
			<src>A:Angles</src>
		</pic>
		<pic card>
			<title>Assertion</title>
			<text>This non-invasive form of <a href="#Exception_Handling">exception handling</a> allows language users to explicitly state (<em>assert</em>) invariants, pre-conditions and post-conditions as logic expressions that must universally hold. Such assertions can be easily removed before deploying the system into production.</text>
		</pic>
		<pic card>
			<title>Assignment</title>
			<text>Moving a data structure into another data structure. Some <abbr title="Fourth Generation Languages">4GLs</abbr> have separate statements for straightforward (byte-copying) and composite (pattern-matching) assignments. In modern languages the source data structure can usually be created on the fly. Many languages combine assignment with trivial manipulation (such as +=).</text>
			<src>CPL:82</src>
			<src>PPL:105</src>
		</pic>
		<pic card>
			<title>Backtracking</title>
			<text>A computation strategy commonly found in declarative languages. Every choice in the evaluation path becomes a <em>save point</em> to which the computation returns in case of failure. All the changes made between the save point and the point of failure are undone. Backtracking is common in parsers and logic programming, and used for <a href="#Exception_Handling">error recovery</a> everywhere else.</text>
			<src>I:Kairos</src>
			<src>PPL:516</src>
		</pic>
		<pic card>
			<title>Backward Compatibility</title>
			<text>In language evolution, introduce new features that should supercede older ones, but ensure the users that their existing code will still run. Ideally, this code should eventually be rewritten and coevolved.</text>
			<src>M:Worry resolution</src>
		</pic>
		<pic card>
			<title>Big Brother</title>
			<text>A more invasive and more powerful form of <a href="#Code_Mining">code mining</a> is examining language users' actions directly. This can be done through the <a href="#IDE">IDE</a> by equipping the plugin with logging functionality: make it record every single action taken by the user, with all the necessary context such as the files opened, and analyse it later.</text>
			<src>A:Pave the cowpaths</src>
		</pic>
		<pic card>
			<title>Block</title>
			<text>Viewing a list of statements as a specific kind of statement is a conceptual eye-opener and allows to treat composite constructs in a uniform and orthogonal way (<em>if … begin … end</em> and <em>do … begin … end</em> instead of <em>if … endif</em> and <em>do … enddo</em>). Languages either use delimiters (begin/end or curly brackets) or <a href="#Indentation__Whitespace">indentation</a>. Blocks can be seen as degenerate <a href="#Procedure">procedures</a>.</text>
			<src>CPL:85</src>
			<src>PPL:106</src>
		</pic>
		<pic card>
			<title>Branching</title>
			<text>Forking the computation based on conditions known at runtime, is a popular construct. Control flow can be transferred unconditionally (<em>branch, jump, goto</em>), or conditionally (based on true/false, zero/positive/negative, explicit condition, exhaustive patterns, etc).</text>
			<src>CPL:86</src>
			<src>PPL:42</src>
			<src>WCC:61</src>
		</pic>
		<pic card>
			<title>Built-in Pattern</title>
			<text>Design patterns, implementation patterns and architecture patterns are used across language boundaries, but many domain-specific languages incorporate well-known patterns as native language constructs: Model-View-Controller, Singleton, State, Visitor, etc.</text>
			<src>A:Simplicity</src>
		</pic>
		<pic card>
			<title>Character Type</title>
			<text>A family of <a href="#Type_Check">value types</a> that can be used in a language: single characters, special characters, zero-terminated strings, fixed length strings, variable length strings, structured strings, etc.</text>
			<src>CPL:67</src>
			<src>PPL:185</src>
		</pic>
		<pic card>
			<title>Class</title>
			<text>A class or a trait represents a template that can be followed by objects: a particular collection of properties and methods that can be always relied on. A class can be then <em>instantiated</em> with appropriate parameters to form an object that <em>conforms to</em> the class definition. Classes are the ultimate form of <a href="#Encapsulation">encapsulation</a>. They can be <a href="#Inheritance">inherited</a> from one another to form <a href="#Substitution">subclasses</a>.</text>
			<src>CPL:107</src>
			<src>PPL:464</src>
		</pic>
		<pic card>
			<title>Code Completion</title>
			<text>Many <a href="#IDE">IDEs</a> monitor what the language user is typing and make suggestions based on their knowledge of the language keywords, constructs allowed in the context, variables visible from the current namespace, etc. The list of such suggestions must be short to be useful, otherwise it does nothing but annoy the users.</text>
			<src>E:Choice editing</src>
			<src>E:Portions</src>
		</pic>
		<pic card>
			<title>Code Mining</title>
			<text>Besides user surveys and expert opinions, there is a third way to uncover points to improve the language in its next versions: examining existing artefacts created in this language. There are many modern techniques in mining software repositories and machine learning that can be helpful here.</text>
			<src>I:Peer feedback</src>
		</pic>
		<pic card>
			<title>Code Ownership</title>
			<text>Signing the user's name under a piece of code has the same effect as signing a person's name on an item: caring about what happens to the item later. <a href="#Comment">Comments</a> explaining which dev made which code changes existed since very early on. In modern ecosystems, ownership is tracked automatically by a version control system and can be checked at any time (<em>git blame</em>).</text>
			<src>P:Watermarking</src>
		</pic>
		<pic card>
			<title>Code Review</title>
			<text>A family of practices around other developers reviewing the code submitted by one of them. Can vary in frequency, volatility, scrutiny, responsibility, intent, etc.</text>
			<src>S:Peerveillance</src>
			<src>S:Sousveillance</src>
			<src>S:Surveillance</src>
		</pic>
		<pic card>
			<title>Comment</title>
			<text>Comments are pieces of <a href="#Documentation">documentation</a> built directly into the source of the system. Most <a href="#IDE">IDEs</a> support comments visually by presenting them in a completely different colour, usually dimmer than the rest of the program, to focus developers on executable constructs first. In some languages like BibTeX or INTERCAL everything uncompilable is a comment.</text>
			<src>P:Contrast</src>
			<src>CPL:12</src>
			<src>EML:23</src>
		</pic>
		<pic card>
			<title>Commit Hook</title>
			<text>In many version control systems it is possible to write system scripts and let them run automatically on the client side (when a language user is preparing a commit) or on the server side (when the changes are shared with others). Such scripts are used to check conformance with language conventions and thus form and influence patterns of its use.</text>
			<src>C:Habits</src>
		</pic>
		<pic card>
			<title>Compilation Error</title>
			<text>Modern languages have many means of assessing executability of the program before it is actually run. Thus, compilers tend to have a sophisticated error handling facility and try to provide enough information for the language user to fix the problems. Some languages are notoriously known for providing bad error messages. Can be provided as a <a href="#Live_Feedback">live feedback</a>.</text>
			<src>E:Conditional warnings</src>
		</pic>
		<pic card>
			<title>Compilation Warning</title>
			<text>When a compiler detects a possibly dangerous situation with extremely limited applicability, it displays a warning message and proceeds with the build process anyway. In many cases there is a special option for disabling a particular warning for a particular piece of code. Can be provided as a <a href="#Live_Feedback">live feedback</a>.</text>
			<src>E:Did you mean?</src>
		</pic>
		<pic card>
			<title>Composite Type</title>
			<text>Arrays, lists, tuples, sets and multisets are the most common <a href="#Type_Definition">user-defined</a> <a href="#Parametrised_Type">parametrised</a> types for collections of elements. It is up to the language designer to decide which ones are supported and how they are handled — can elements within on collection have different types, are they mutable, passed by name/value/reference, etc.</text>
			<src>CPL:156</src>
			<src>PPL:70</src>
			<src>WCC:83</src>
		</pic>
		<pic card>
			<title>Concrete Syntax</title>
			<text>The way to describe the concrete representation of the programs. The concrete syntax is used by humans to read, write, create and understand sentences of the language. Usually the only languages that do not have concrete syntax are those intended for internal intermediate representation. Some languages have more than one.</text>
			<src>P:Transparency</src>
			<src>PPL:89</src>
			<src>EML:21</src>
		</pic>
		<pic card>
			<title>Conditional Compilation</title>
			<text>Some conditions can be checked during compile type and result in different code to be produced by the compiler to be run later. This is frequently used in situations when one codebase specifies the behaviour of a system that must be compiled and deployed under a variety of devices and hardware architectures.</text>
		</pic>
		<pic card>
			<title>Debugging</title>
			<text>The activity of finding and fixing sources of incorrect behaviour is not enjoyed by many language users, but is used by all of them without exception anyway. Declarative languages are the hardest to debug and imperative ones are the easiest. Most modern languages are shipped with a dedicated debugger or have debugging functionality in the <a href="#IDE">IDE</a>.</text>
			<src>E:Are you sure?</src>
			<src>E:Interlock</src>
		</pic>
		<pic card>
			<title>Default</title>
			<text>Unchanged configuration options, uninitialised <a href="#Variable">variables</a> and unspecified optional <a href="#Access_Modifier">modifiers</a> are examples of situations when a default value must be used by the compiler. These default values are decided by the language designer and typically represent the <em>best</em> option within the paradigm.</text>
			<src>E:Defaults</src>
			<src>E:Opt-outs</src>
		</pic>
		<pic card>
			<title>Deprecated Construct</title>
			<text>In language evolution, sometimes a no longer desired construct cannot be simply removed to avoid breaking <a href="#Backward_Compatibility">backward compatibility</a>. However, it can be marked explicitly as deprecated to discourage language users to rely on it.</text>
			<src>A:Feature deletion</src>
		</pic>
		<pic card>
			<title>Design Chart/Diagram</title>
			<text><abbr title="Unified Modelling Language">UML</abbr> distinguishes between structural (<a href="#Class">class</a>, <a href="#Module">package</a>, object, component, composite structure, deployment) and behavioural diagrams (activity, sequence, use case, state, communication, interaction overview, timing). The former specify and visualise structure breakdown, the latter — events and interaction. Some languages (e.g., syntactic diagrams) are both.</text>
			<src>P:Possibility trees</src>
			<src>EML:30</src>
		</pic>
		<pic card>
			<title>Developer Communication</title>
			<text>A communication channel among language users that is open at all or almost all times during development. Can take a form of a specially designed office, skype chat rooms, slack channels, etc.</text>
			<src>A:Converging &amp; diverging</src>
		</pic>
		<pic card>
			<title>Documentation</title>
			<text>Language manuals are important for people learning the language, as well as for active users — sometimes these are two different sets of documents. Documentation may contain executable examples and can/should be automatically checked for internal validity and consistency with the tooling.</text>
			<src>M:Serving suggestion</src>
			<src>EML:264</src>
		</pic>
		<pic card>
			<title>Encapsulation</title>
			<text>Most high level language abstract from low level details like video memory access, memory allocation, register values, caching, etc. Depending on the language philosophy, these features may be prohibited or just hard to find for beginners. Data structures can also be encapsulated by bundling them into <a href="#Record">records</a> or <a href="#Class">classes</a>, and code can be organised in hierarchical <a href="#Module">modules</a>.</text>
			<src>A:Hiding things</src>
			<src>CPL:104</src>
			<src>PPL:12</src>
		</pic>
		<pic card>
			<title>Enumeration Type</title>
			<text>An enumeration is a <a href="#Type_Definition">data type</a> that defines a very limited set of possible values which are, nevertheless, more comfortably referred to by their names and not by encoded numbers. The most famous enumeration is the Boolean (logical) type, which contains only two values: <em>true</em> and <em>false</em>. If the domain permits, the language does not have to support user-defined enumerations.</text>
			<src>CPL:66</src>
			<src>PPL:188</src>
			<src>WCC:65</src>
		</pic>
		<pic card>
			<title>Esotericism</title>
			<text><a href="http:catb.orgesrintercal">INTERCAL</a>, <a href="http:www.madore.org~davidprogramsunlambda">Unlambda</a>, <a href="http:catseye.tcnodeBefunge-93.html">Befunge</a>, <a href="http:www.lscheffer.commalbolge.shtml">Malbolge</a> and other <a href="https:esolangs.orgwiki">esoteric languages</a> are developed based on paradigms that are so unconventional that writing even one program puts disproportional strain on the language user. The challenging nature makes people engage and compete in programming in such languages as a form of entertainment.</text>
			<src>L:Challenges &amp; targets</src>
		</pic>
		<pic card>
			<title>Event Loop</title>
			<text>This pattern in user interface implementation turns entire program into a giant loop waiting for the user to activate its functionality by choosing the way to communicate (click, tap, edit, etc). Since direct implementations are not green (consume too much energy), it can be built natively into the language and optimised by the compiler and hardware.</text>
			<src>I:Feedback through form</src>
			<src>CPL:265</src>
		</pic>
		<pic card>
			<title>Exception Handling</title>
			<text>An emergency sibling of <a href="#Branching">branching</a> used for extraordinary situations — can be slower than the normal branching, but usually more robust in handling situations like a cricial failure during the handling of another failure. A less invasive form of exception handling are <a href="#Assertion">assertions</a>.</text>
			<src>CPL:95</src>
			<src>PPL:316</src>
		</pic>
		<pic card>
			<title>Feature Lock-out</title>
			<text>Certain combinations of language features may be disabled (errorneous) by default, with a possibility of enabling them explicitly. For example, redefining a method in a derived class is only allowed in C# when a specific <em>override</em> keyword is used, which leaves visual cues to future readers of the piece of code in question.</text>
			<src>E:Task lock-in/out</src>
		</pic>
		<pic card>
			<title>First Class Citizen</title>
			<text>It is an important design point to decide which entities within a program have the right to be saved, passed as arguments, transferred through other means, etc. Numbers? Collections? Objects? Functions? Unfinished computations? Data streams? Unfilled templates?</text>
			<src>CPL:151</src>
			<src>PPL:397</src>
		</pic>
		<pic card>
			<title>Garbage Collection</title>
			<text>Automatic release of memory is impossible for cyclic data structures. Languages that want to support them, have a <em>garbage collector</em> — a runtime compiler component that occasionally <em>marks</em> data structures that have become inaccessible and then <em>sweeps</em> them away, freeing the memory. GC can compromise language responsiveness and performance.</text>
			<src>M:Bundling</src>
			<src>PPL:443</src>
		</pic>
		<pic card>
			<title>Generation</title>
			<text>Tedious, repetitive and error-prone programming tasks can be automated by using templates, wizards, explicit staging/morphing constructs of generative programming, construction workbenches, etc. In many practical cases the language user is allowed to edit the result to fine-tune it.</text>
			<src>A:Mazes</src>
			<src>PPL:5</src>
			<src>EML:119</src>
			<src>I:Tunnelling &amp; wizards</src>
		</pic>
		<pic card>
			<title>Holy War</title>
			<text>Software engineers are very passionate about what they do and which choices they make in doing it. By explicitly stating which camp the language is siding with or which key figures of the community endorse it, one can invoke an emotional response directly mappable to language's acceptance and popularity.</text>
			<src>C:Do as you’re told</src>
			<src>C:Emotional engagement</src>
		</pic>
		<pic card>
			<title>IDE</title>
			<text>Integrated Development Environments (IDEs) are used to support language users in their common tasks: code navigation, <a href="#Debugging">debugging</a>, building, <a href="#Module">modularising</a>, <a href="#Refactoring">refactoring</a>, etc. Can take a form of a dedicated standalone editor, a website or a plugin for a universal editor. Needs to have a well-designed <a href="#IDE_GUI">UI</a>.</text>
			<src>A:Conveyor belts</src>
			<src>EML:264</src>
		</pic>
		<pic card>
			<title>IDE GUI</title>
			<text>Most <a href="#IDE">IDEs</a> divide the screen space among areas with different functionality: for navigating through adjacent programs, for editing the code, for reviewing the architecture, for watching how values change at runtime, etc. Advanced IDEs like IntelliJ, Eclipse or <abbr title="Visual Studio .NET">VS.NET</abbr> have so many subwindows that the user has to choose which ones to keep open at each given time.</text>
			<src>A:Positioning</src>
		</pic>
		<pic card>
			<title>Indentation &amp; Whitespace</title>
			<text>The two extremes for this aspect are: treat indentation as something crucial to the program structure (and thus process constructs differently based on columns where they start) and discard all possible indentation (even in the middle of names, as FORTRAN does). Most languages are somewhere in the middle. Normalisation of whitespace use is called <a href="#Pretty-printing">pretty-printing</a>.</text>
			<src>PPL:91</src>
			<src>EML:23</src>
		</pic>
		<pic card>
			<title>Inheritance</title>
			<text>An "is-a" relation can be represented by a language construct when one class, object or function <em>inherits</em> all the properties of its <em>parent</em> and possibly adds others exclusive to itself. It is a design consideration which entities can be derived from which, whether one can inherit from several parents, etc.</text>
			<src>CPL:194</src>
			<src>PPL:465</src>
		</pic>
		<pic card>
			<title>Input/Output</title>
			<text>Most programs are not self-contained and require input data to run and produce results, which in turn need to be propagated somewhere. There are languages that are volatile with input and output, those that only work with files, those that wrap I/O as a side effect of a monad, etc.</text>
			<src>CPL:187</src>
			<src>PPL:13</src>
		</pic>
		<pic card>
			<title>Instruction Set</title>
			<text>Instead of freely combinable statements and expressions, low level languages (microcodes, assemblers, <a href="#Virtual_Machine">virtual machine</a> bytecodes, etc) have limited non-extendable instruction sets. Each of the instructions typically has a mnemonic (name) and a bit-level encoding. Realistic assemblers had to introduce <a href="#Macro">macro</a> expansions to make programming experience tolerable.</text>
		</pic>
		<pic card>
			<title>Iteration</title>
			<text>There are many looping constructs, ranging from the imperative classics such as a for loop, to the functional classics such as <em>map</em>, <em>filter</em> and <em>fold</em> (or <em>reduce</em>). It is not uncommon for languages to support only some of these constructs. Some older <abbr title="General Purpose Languages">GPLs</abbr> and <abbr title="Fourth Generation Languages">4GLs</abbr> also have one iterative construct which can be annotated with all kinds of conditions and steppers.</text>
			<src>CPL:89</src>
			<src>PPL:47</src>
			<src>WCC:61</src>
		</pic>
		<pic card>
			<title>Keyword</title>
			<text>Special words in <a href="#Concrete_Syntax">concrete syntax</a> of the language that carry identical meaning across all possible programs in the same language. Can be made reserved so that programmers may not redefine them. A language can get new keywords by evolution.</text>
			<src>CPL:11</src>
			<src>PPL:92</src>
			<src>WCC:33</src>
		</pic>
		<pic card>
			<title>Labelling</title>
			<text>Since most engineers know several languages, some <a href="#Documentation">language manuals</a> directly assume some initial familiarity of their users with other languages. Can refer to paradigms or families (<em>"this is a <a href="#Type_Check">strongly typed</a> functional language"</em>) or directly to other languages (<em>"<a href="#Inheritance">inheritance</a> works like in Java"</em>).</text>
			<src>M:Anchoring</src>
		</pic>
		<pic card>
			<title>Lazy Evaluation</title>
			<text>A <em>lazy</em> compiler defers evaluation to the latest possible moment. Lazy languages allow infinite data structures (as long as they are processed one chunk at a time) and may have unpredictable outcomes if calculations are allowed to have side effects (like C's ++). Lazy evaluation has many applications from code optimisation to stream data processing.</text>
			<src>CPL:239</src>
		</pic>
		<pic card>
			<title>Live Feedback</title>
			<text>An advanced <a href="#IDE">IDE</a> running on modern hardware can utilise its idle cycles to attempt parsing, compilation, dependency analysis and other kinds of checks while the language user is still typing the program. Errorneous and suspicious pieces of code are commonly underlined with red or yellow squiggly lines familiar from natural word processors.</text>
			<src>I:Real-time feedback</src>
		</pic>
		<pic card>
			<title>Macro</title>
			<text>A mechanism commonly found in low level languages that allow users to define a piece of <a href="#Syntactic_Sugar">syntactic sugar</a> to be <em>expanded</em> into a longer sequence of <a href="#Instruction_Set">instructions</a>. Advanced parametrised macros resemble <a href="#Procedure">procedures</a> in expressivity but may behave less reliably due to their lexical nature.</text>
		</pic>
		<pic card>
			<title>Meme</title>
			<text><a href="http:lolcode.org">LOLCODE</a>, <a href="http:lhartikk.github.ioArnoldC">ArnoldC</a> and others are languages developed based on the memes that are circulating among software engineers: the popularity of them piggybacks entirely on the viral nature of those memes.</text>
			<src>L:Make it a meme</src>
		</pic>
		<pic card>
			<title>Metaphor</title>
			<text>Atom, <a href="#Backtracking">backtracking</a>, binding, body, build, cloud, collision, compiler, dangling else, <a href="#Debugging">debugging</a>, <a href="#Syntactic_Sugar">desugaring</a>, <a href="#Record">dictionary</a>, <a href="#Type_Check">duck typing</a>, environment, filter, <a href="#Numeric_Data_Type">floating point</a>, forest, framework, <a href="#Garbage_Collection">garbage collection</a>, <a href="#Branching">go to</a>, heap, <a href="#Inheritance">inheritance</a>, <a href="#Branching">jump</a>, library, linking, map, <a href="#Pointer">pointer</a>, pruning, <a href="#Synchronisation">rendezvous</a>, stack, turtle, weaving, window, …</text>
			<src>P:Metaphors</src>
		</pic>
		<pic card>
			<title>Module</title>
			<text>Large programs inevitably outgrow their creators' capabilities to understand them all at once. Comprehension can be aided greatly by the language providing modules, packages, classes, procedures and other elements to group related code fragments together. Modern <a href="#IDE">IDEs</a> can analyse code for cohesion and coupling to help improve modularisation.</text>
			<src>A:Segmentation</src>
			<src>CPL:113</src>
			<src>PPL:267</src>
			<src>WCC:92</src>
			<src>P:Proximity &amp; grouping</src>
		</pic>
		<pic card>
			<title>Numeric Data Type</title>
			<text>Often gets overlooked at the early stages of language design, but could significantly shape the application area of the language. There are many integer <a href="#Type_Check">types</a>, distinguished by their byte sizes and therefore value ranges; also decimal types with fixed scale and precision; and floating point types good for scientific computations but not for handling finances.</text>
			<src>CPL:63</src>
			<src>PPL:65</src>
			<src>WCC:81</src>
		</pic>
		<pic card>
			<title>Operator Precedence</title>
			<text>To avoid excessive use of parentheses, a language can provide a default convention of disambiguating constructs with 3+ entities bound by binary operators. In arithmetic expressions, the precedence usually follows mathematical laws.</text>
			<src>CPL:79</src>
			<src>PPL:94</src>
		</pic>
		<pic card>
			<title>Orthogonal Design</title>
			<text>Independent features should be controlled by independent mechanisms. Related constructs should look similar and different ones should look different. Regular rules without exceptions are easier to learn. The less surprises one has while learning the language, the higher the language quality.</text>
			<src>P:(A)symmetry</src>
			<src>PPL:8</src>
			<src>P:Similarity</src>
			<src>PPL:8</src>
		</pic>
		<pic card>
			<title>Parametrised Type</title>
			<text>Some <a href="#Type_Check">types</a> can be defined partially by the user and partially by the language designer. For example, the language designer knows what a <a href="#Composite_Type"><em>list</em></a> is, and the language user can select any other type for list elements — this will change handling of such elements, but the philosophy behind their collection will stay the same.</text>
			<src>CPL:180</src>
			<src>PPL:279</src>
		</pic>
		<pic card>
			<title>Performance Testing</title>
			<text>Performance testing and its variations like profiling and stress testing are commonly desired nice-to-have features in <a href="#IDE">IDEs</a>. Languages and their ecosystems greatly vary in the extent to which this aspect is recognised and supported.</text>
			<src>A:Pave the cowpaths</src>
		</pic>
		<pic card>
			<title>Phased Process</title>
			<text>Breaking a process into phases is one of the most used divide-and-conquer principles applied in language processing. Most compilers are designed to work in phases, and different competences and skills are required to implement each phase.</text>
			<src>I:Partial completion</src>
			<src>PPL:38</src>
			<src>WCC:7</src>
		</pic>
		<pic card>
			<title>Picture Clause</title>
			<text>A <a href="#Type_Check">data type</a> that saves a specially formatted entity (usually a float or a date) that can be used directly in printing statements but also manipulated as data.</text>
		</pic>
		<pic card>
			<title>Platform Lock-in/out</title>
			<text>Supporting a great language only for one particular hardware platform, <abbr title="Operating System">OS</abbr> or IDE, implicitly forces people to use them. For example, malware practices of Java installers turned some users agains <abbr title="Java Virtual Machine">JVM</abbr>, which also deprived them of Scala and Clojure. Another example is .NET Core, a redesign of the .NET Framework which allows typically Windows-specific code to run on Linux.</text>
			<src>M:Format lock-in/out</src>
		</pic>
		<pic card>
			<title>Pointer</title>
			<text>A popular data type in low level languages, representing a memory address where the data structure is stored — which is more efficient to pass across functions than the structure itself. The <a href="#Type_Check">type</a> of the structure needs to be known to decipher itse contents, since the pointer itself is nothing more than a number.</text>
			<src>CPL:69</src>
			<src>PPL:206</src>
			<src>WCC:86</src>
		</pic>
		<pic card>
			<title>Pretty-printing</title>
			<text>A language can have a <a href="#Default">default</a> formatting convention that is not only accepted by the community to improve the representation quality of the programs, but also automated and shipped in a form of a tool. Such a tool can be very configurable, have limited feature selection or none at all.</text>
			<src>P:Implied sequences</src>
			<src>PPL:89</src>
			<src>EML:23</src>
		</pic>
		<pic card>
			<title>Preview</title>
			<text>Some features are very useful in general, but implemented in a way that sometimes fails. In this case, the impact of an application of a feature can be explicitly examined by the language user before agreeing to proceed. Common for database queries and <a href="#Refactoring">object-oriented refactorings</a>.</text>
			<src>I:Simulation &amp; feedforward</src>
		</pic>
		<pic card>
			<title>Procedure</title>
			<text>Pieces of code that can be executed from other places in the program, are common to all languages, since they promote reuse, but they are designed differently. Some languages only allow them to be attached to an object (methods) or a class (static methods), others provide special <a href="#Synchronisation">synchronisation</a> mechanisms to procedures to cooperate (coroutines, delegates), etc.</text>
			<src>CPL:106</src>
			<src>PPL:35</src>
			<src>WCC:74</src>
		</pic>
		<pic card>
			<title>Program Smell</title>
			<text>A <em>smell</em> is found when a code fragment has suspicious characteristics even without being wrong. Modern computer science identifies smells for code, models, architecture, spreadsheets, hardware, grammars, etc. The very use of the word "smell" strongly implies that any neat self-respecting language user should try to leave less of those when touching the code.</text>
			<src>C:Desire for order</src>
		</pic>
		<pic card>
			<title>Record</title>
			<text>Many languages have some kinds of records or structures that bundle several related pieces of data without attaching methods to work with that data. A dynamic variation thereof is known as a <em>dictionary</em> or a <em>map</em> (e.g., hashmap) and it allows users to add and remove fields at runtime.</text>
			<src>CPL:169</src>
			<src>PPL:199</src>
			<src>WCC:41</src>
		</pic>
		<pic card>
			<title>Redefine</title>
			<text>Once something has been defined, it can be redefined in many languages: <a href="#Inheritance">derived classes</a> can overload base classes' properties, local variables can shadow the global ones with the same name, the same memory fragment can be treated as belonging to two separate <a href="#Type_Check">data types</a>, etc.</text>
			<src>CPL:138</src>
			<src>PPL:85</src>
		</pic>
		<pic card>
			<title>Refactoring</title>
			<text>Refactorings are code changes that do not impact the system's behaviour but change its internal structure to improve code quality, prepare for the subsequent change, etc. Some <abbr title="Domain-Specific Modelling Languages">DSMLs</abbr> mean their programs to <em>only</em> change through refactorings and refinements. In other domains it is also not uncommon to eventually get refactoring support in the <a href="#IDE">IDE</a>.</text>
			<src>C:Rephrasing &amp; renaming</src>
			<src>EML:154</src>
		</pic>
		<pic card>
			<title>Runtime</title>
			<text>A runtime environment is a system component that must accompany the result of the compilation in order for it to function correctly. May be completely non-existent, contain <a href="#Standard_Library">standard libraries</a> or a <a href="#Virtual_Machine">virtual machine</a>.</text>
			<src>WCC:42</src>
		</pic>
		<pic card>
			<title>Standard Library</title>
			<text>A library or a set of libraries that are shipped together with the language. It can be a tough design decision for the language designer to decide which functionality needs to become native constructs and which can go into the standard library.</text>
			<src>WCC:78</src>
		</pic>
		<pic card>
			<title>Static Analysis</title>
			<text>If a language does not directly limit its users' ability to express thing in a "bad" way, this is still possible for the compiler of the language. Parsing, <a href="#Type_Check">type checking</a>, dependence analysis, <a href="#Pretty-printing">formatting</a>, conventions are all examples of this. One of the language design principles states that if an error gets though one line of defence, it should be caught by the next one.</text>
			<src>A:Roadblock</src>
			<src>PPL:7</src>
			<src>EML:264</src>
		</pic>
		<pic card>
			<title>Substitution</title>
			<text>When a subprogram specifies the <a href="#Type_Check">types</a> of input it expects, these types do not need to be treated precisely: often one can use entities of subtypes of the specified types (e.g., put a circle in a function that draws a shape because a circle is a subtype of shape). Subtyping is nontrivial, and the designer must choose among covariance, contravariance, invariance, etc.</text>
			<src>CPL:197</src>
			<src>PPL:208</src>
		</pic>
		<pic card>
			<title>Synchronisation</title>
			<text>Managing the use of resources by some predefined form of synchronisation between readers and writers. Can be synchronous or asynchronous, and take forms of resource locks, semaphors, pipes, rendezvous, handshakes, message passing channels, etc.</text>
			<src>A:Converging &amp; diverging</src>
			<src>CPL:267</src>
			<src>PPL:328</src>
		</pic>
		<pic card>
			<title>Syntactic Sugar</title>
			<text>Nice-to-have constructs that are not extending the expressive power of the language, are sometimes not actually implemented directly — just expanded into bigger sequences of more primitive and less user-friendly constructs.</text>
			<src>P:Fake affordances</src>
		</pic>
		<pic card>
			<title>Syntax Highlighting</title>
			<text>A development environment of the language can profit from visualisation even if the language is textual by colour-coding different categories of words (strings, numbers, standard libraries, reserved words, etc). Colours are also commonly used for non-textual languages, unless programs are expected to be printed or viewed on grayscale devices.</text>
			<src>A:Material properties</src>
			<src>EML:27</src>
			<src>P:Colour associations</src>
		</pic>
		<pic card>
			<title>Type Check</title>
			<text>Components can be identified, explicitly or automatically, to belong to a particular <em>type</em>. Among other things, the type determines applicability and compatibility of components with one another. In complex scenarios (like a monadic bind) hard to understand components can only fit together in one possible way.</text>
			<src>E:Matched affordances</src>
			<src>PPL:129</src>
		</pic>
		<pic card>
			<title>Type Definition</title>
			<text>Several <abbr title="General Purpose Languages">GPLs</abbr> and many <abbr title="Domain-Specific Languages">DSLs</abbr> can exist perfectly without ever needing any user-defined types. However, in many cases it can prove useful to allow the language user to make their own <a href="#Record">data structures</a> and algebraic data types to provide their input for the <a href="#Type_Check">type checker</a>.</text>
			<src>CPL:60</src>
			<src>PPL:268</src>
			<src>WCC:26</src>
		</pic>
		<pic card>
			<title>Undefined Behaviour</title>
			<text>When a particular combination of language constructs is not explicitly specified by the standard, its implementers can take different shortcuts in interpreting it. As a result, the same piece of code produces different results based on the compiler, the computer, time of day, etc. Common in legacy languages like C or COBOL.</text>
			<src>M:Antifeatures &amp; crippleware</src>
		</pic>
		<pic card>
			<title>Unification</title>
			<text>Given two composite data structures, a compiler can be tasked to find their matching components and proceed with assignment, transformation, etc. Widely used in logic programming, metaprogramming, model synchronisation, bidirectional transformation, <abbr title="Fourth Generation Languages">4GLs</abbr> for banking, etc.</text>
			<src>CPL:248</src>
			<src>PPL:507</src>
		</pic>
		<pic card>
			<title>Variable</title>
			<text>These named memory areas are thought to be fundamental for the nature of computation — and they are within the von Neumann paradigm, which is not the only choice modern people have. One can make their language more functional and force its users to think about data flow, or make it more imperative and let them worry about where the intermediate data is stored.</text>
			<src>CPL:52</src>
			<src>PPL:22</src>
			<src>WCC:72</src>
		</pic>
		<pic card>
			<title>Virtual Machine</title>
			<text>An emulator for a real or imaginary hardware architecture that has a low level coding language that can be used by other components or tools to compiler high level languages to. VMs trades off performance for an extra layer of abstraction. Some virtual machines (e.g., <a href="https:en.wikipedia.orgwikiLimbo_(programming_language)">Dis</a>) compile their code into native machine code just before running it.</text>
		</pic>
		<hr/>
		<div class="src">
			<ul>				<li class="dwi A"><a href="http://designwithintent.co.uk/architectural-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Architectural Lens</a></li>
				<li class="dwi E"><a href="http://designwithintent.co.uk/errorproofing-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Errorproofing Lens</a></li>
				<li class="dwi I"><a href="http://designwithintent.co.uk/interaction-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Interaction Lens</a></li>
				<li class="dwi L"><a href="http://designwithintent.co.uk/ludic-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Ludic Lens</a></li>
				<li class="dwi P"><a href="http://designwithintent.co.uk/perceptual-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Perceptual Lens</a></li>
				<li class="dwi C"><a href="http://designwithintent.co.uk/cognitive-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Cognitive Lens</a></li>
				<li class="dwi M"><a href="http://designwithintent.co.uk/machiavellian-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Machiavellian Lens</a></li>
				<li class="dwi S"><a href="http://designwithintent.co.uk/security-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Security Lens</a></li>
			</ul>
		</div>
		<div class="src">
			<ul>				<li class="pl cpl"><a href="http://amzn.to/2n8cd5u">Comparative Programming Languages (Wilson, Clark, 1993)</a></li>				<li class="pl ppl"><a href="http://amzn.to/2nmFg70">Principles of Programming Languages: Design, Evaluation and Implementation (MacLennan, 1983)</a></li>				<li class="pl eml"><a href="http://amzn.to/2n8yz6y">Engineering Modeling Languages (Combemale, France, Jézéquel, Rumpe, Steel, Vojtisek, 2017)</a></li>				<li class="pl wcc"><a href="http://amzn.to/2nmUPeU">Compiler Construction (Wirth, 2005)</a></li>			</ul>
		</div>
		<hr/>
		<div class="last">
			The collection of <strong>82</strong> cards created and maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.<br/>
			Sources colour coded and explained above this notice.<br/>
			Last updated: #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>