<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1461835534960" ID="ID_1113400321" MODIFIED="1462451762318" TEXT="meteor 1_3">
<font NAME="SansSerif" SIZE="20"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties"/>
<node COLOR="#0033ff" CREATED="1461874216839" ID="ID_1955163752" MODIFIED="1462372338798" POSITION="right" TEXT="data">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<icon BUILTIN="full-4"/>
<node COLOR="#00b439" CREATED="1461874230125" FOLDED="true" ID="ID_585527631" MODIFIED="1463007671430" TEXT="collections &amp; schemas">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461875377485" ID="ID_135502663" MODIFIED="1462205785980" TEXT="collections">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461875190277" ID="ID_1999270645" MODIFIED="1462205785980" TEXT="local collections">
<node COLOR="#111111" CREATED="1461875200629" ID="ID_335604713" MODIFIED="1462205785980" TEXT="exist on client or server"/>
<node BACKGROUND_COLOR="#fbe012" COLOR="#111111" CREATED="1461875217949" ID="ID_1906515826" MODIFIED="1462205785980" TEXT="SelectedTodos = new Mongo.Collection(null);"/>
<node COLOR="#111111" CREATED="1461875293645" ID="ID_1489969735" MODIFIED="1462205785980" TEXT="no db connection"/>
<node COLOR="#111111" CREATED="1461875302485" ID="ID_1051490134" MODIFIED="1462205785980" TEXT="used as an alternative datastore"/>
<node COLOR="#111111" CREATED="1461875324661" ID="ID_1590534160" MODIFIED="1462206859197" TEXT="better over arrays, can run complex mongo queries"/>
</node>
<node COLOR="#111111" CREATED="1461874883381" ID="ID_1048103359" MODIFIED="1462205785980" TEXT="client side">
<node BACKGROUND_COLOR="#fbe012" COLOR="#111111" CREATED="1461875024261" ID="ID_1854344291" MODIFIED="1462205785980" TEXT="Todos = new Mongo.Collection(&apos;Todos&apos;);"/>
<node COLOR="#111111" CREATED="1461875069253" ID="ID_596866666" MODIFIED="1462205785980" TEXT="it is a client side cache"/>
<node COLOR="#111111" CREATED="1461875135981" ID="ID_739517231" MODIFIED="1462205785981" TEXT="keep it synched with a subscription"/>
<node COLOR="#111111" CREATED="1461875152597" ID="ID_1763913190" MODIFIED="1462205785981" TEXT="write to the backend db with Methods"/>
</node>
<node COLOR="#111111" CREATED="1461874876782" ID="ID_176941205" MODIFIED="1462205785981" TEXT="serverside">
<node BACKGROUND_COLOR="#fbe012" COLOR="#111111" CREATED="1461874896620" ID="ID_1711978027" MODIFIED="1462205785981" TEXT="Todos = new Mongo.Collection(&apos;Todos&apos;);"/>
<node COLOR="#111111" CREATED="1461874932605" ID="ID_1413094045" MODIFIED="1462205785981" TEXT="synchronous API"/>
<node COLOR="#111111" CREATED="1461874969157" ID="ID_1104380536" MODIFIED="1462205785981" TEXT="layer on MongoDB driver"/>
</node>
</node>
<node COLOR="#990000" CREATED="1461875418877" ID="ID_954626765" MODIFIED="1462205785981" TEXT="defining schema">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461875440740" ID="ID_57325167" LINK="http://atmospherejs.com/aldeed/simple-schema" MODIFIED="1462205785981" TEXT=" aldeed:simple-schema">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1461875549724" ID="ID_243430292" MODIFIED="1462205785981" TEXT="use to constrain contents of collections to known format">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lists.schema = new SimpleSchema({
    </p>
    <p>
      &#160;&#160;name: {type: String},
    </p>
    <p>
      &#160;&#160;incompleteCount: {type: Number, defaultValue: 0},
    </p>
    <p>
      &#160;&#160;userId: {type: String, regEx: SimpleSchema.RegEx.Id, optional: true}
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        &#160;&#160;&#160;&#160;We specify that the name field of a list is required and must be a string.
      </li>
      <li>
        &#160;&#160;&#160;&#160;We specify the incompleteCount is a number, which on insertion is set to 0 if not otherwise specified.
      </li>
      <li>
        &#160;&#160;&#160;&#160;We specify that the userId, which is optional, must be a string that looks like the ID of a user document.
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#fbe012" COLOR="#111111" CREATED="1461875846749" ID="ID_1801952056" MODIFIED="1462205785981" TEXT="Lists.schema.validate(list);"/>
<node COLOR="#111111" CREATED="1461875886862" ID="ID_1222705234" LINK="https://github.com/meteor/validation-error/" MODIFIED="1462205785981" TEXT="can throw ValidationError"/>
</node>
<node COLOR="#990000" CREATED="1461876089845" ID="ID_1585902002" MODIFIED="1462205785981" TEXT="designing you data schema">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461876110582" ID="ID_1991078198" MODIFIED="1462205785981" TEXT="denormalization &amp; multiple collections">
<node COLOR="#111111" CREATED="1461876321934" ID="ID_260596061" MODIFIED="1462205785981" TEXT="don&apos;t nest documents"/>
<node COLOR="#111111" CREATED="1461876342109" ID="ID_782442256" MODIFIED="1462205785981" TEXT="split you data out into many collections"/>
</node>
<node COLOR="#111111" CREATED="1461876395366" ID="ID_1371083481" MODIFIED="1462205785981" TEXT="design for the future">
<node COLOR="#111111" CREATED="1461876403117" ID="ID_1665318277" MODIFIED="1462205785981" TEXT="do you need to break data into more collections?"/>
</node>
</node>
<node COLOR="#990000" CREATED="1461876507566" ID="ID_1506550367" MODIFIED="1462205785982" TEXT="using schemas on write">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461876528798" ID="ID_258814004" LINK="https://atmospherejs.com/aldeed/collection2" MODIFIED="1462205785982" TEXT="aldeed:collection2 ">
<icon BUILTIN="password"/>
</node>
<node BACKGROUND_COLOR="#fbe012" COLOR="#111111" CREATED="1461876597022" ID="ID_325607492" MODIFIED="1462205785982" TEXT="Lists.attachSchema(Lists.schema);"/>
<node COLOR="#111111" CREATED="1462617351415" ID="ID_1557526026" MODIFIED="1462617356913" TEXT="benefits">
<node COLOR="#111111" CREATED="1461877031894" ID="ID_1802412748" MODIFIED="1462617361030" TEXT="default value &amp; data cleaning">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1461877043574" ID="ID_1976516172" MODIFIED="1462205785982" TEXT="coerces types"/>
<node COLOR="#111111" CREATED="1461877071142" ID="ID_1956789331" MODIFIED="1462205785982" TEXT="remove attrs not in schema"/>
<node COLOR="#111111" CREATED="1461877083606" ID="ID_13080277" MODIFIED="1462205785982" TEXT="assigns default values based on schema def"/>
<node COLOR="#111111" CREATED="1461877099149" ID="ID_791497081" MODIFIED="1462205785982" TEXT="can write your own insert methods">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      class ListsCollection extends Mongo.Collection {
    </p>
    <p>
      &#160;&#160;insert(list, callback) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (!list.name) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;let nextLetter = 'A';
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;list.name = `List ${nextLetter}`;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;while (!!this.findOne({name: list.name})) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// not going to be too smart here, can go past Z
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;nextLetter = String.fromCharCode(nextLetter.charCodeAt(0) + 1);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;list.name = `List ${nextLetter}`;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// Call the original `insert` method, which will validate
    </p>
    <p>
      &#160;&#160;&#160;&#160;// against the schema
    </p>
    <p>
      &#160;&#160;&#160;&#160;return super.insert(list, callback);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      Lists = new ListsCollection('Lists');
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461877621886" ID="ID_1519306195" MODIFIED="1462617386772" TEXT="can write your own hooks, see docs"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1461879350399" ID="ID_1324414597" LINK="http://guide.meteor.com/collections.html#abstracting-denormalizers" MODIFIED="1462617361020" TEXT="abstracting denormalizers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Denormalization is the practice of storing the same piece of information in the
    </p>
    <p>
      database multiple times (as opposed to a non-redundant &#8220;normal&#8221; form).
    </p>
    <p>
      MongoDB is a database where denormalizing is encouraged, and thus optimized for this practice.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461879384766" ID="ID_1187257330" MODIFIED="1462205785982" TEXT="put code common to multiple collections in one place"/>
</node>
<node COLOR="#990000" CREATED="1461925884843" ID="ID_664010628" MODIFIED="1463007662927" TEXT="migrations">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461925894809" ID="ID_1076265082" MODIFIED="1462205785982" TEXT="writing">
<node COLOR="#111111" CREATED="1461928504468" ID="ID_123311738" LINK="https://atmospherejs.com/percolate/migrations" MODIFIED="1462205785982" TEXT="percolate:migrations">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Migrations.add({
    </p>
    <p>
      &#160;&#160;version: 1,
    </p>
    <p>
      &#160;&#160;up() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Lists.find({todoCount: {$exists: false}}).forEach(list =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;const todoCount = Todos.find({listId: list._id})).count();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;Lists.update(list._id, {$set: {todoCount}});
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;},
    </p>
    <p>
      &#160;&#160;down() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Lists.update({}, {$unset: {todoCount: true}});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1461925898669" ID="ID_974500100" LINK="https://docs.mongodb.org/v3.0/core/bulk-write-operations/" MODIFIED="1462205785982" TEXT="bulk changes">
<node COLOR="#111111" CREATED="1461933751870" ID="ID_1038320430" MODIFIED="1462205785983" TEXT="good for large amount of changes"/>
<node COLOR="#111111" CREATED="1461933764694" ID="ID_1993948285" MODIFIED="1462205785983" TEXT="best to put site into maintainance"/>
</node>
<node COLOR="#111111" CREATED="1461925903109" ID="ID_1450584668" MODIFIED="1462205785983" TEXT="running">
<node COLOR="#111111" CREATED="1461933891319" ID="ID_1100565316" MODIFIED="1462205785983" TEXT="use meteor shell"/>
<node COLOR="#111111" CREATED="1461934035815" ID="ID_1900589147" MODIFIED="1462205785983" TEXT="running locally against production db"/>
<node BACKGROUND_COLOR="#fbf003" COLOR="#111111" CREATED="1461933906912" ID="ID_178083888" MODIFIED="1462205785983" TEXT="Migrations.migrateTo(&apos;latest&apos;);"/>
</node>
<node COLOR="#111111" CREATED="1461925906341" ID="ID_462929114" MODIFIED="1462205785983" TEXT="breaking changes"/>
<node COLOR="#111111" CREATED="1461925914324" ID="ID_1386062758" MODIFIED="1462205785983" TEXT="caveats"/>
</node>
<node COLOR="#990000" CREATED="1461971277774" ID="ID_875598323" MODIFIED="1462205785983" TEXT="associations between collections">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461971303591" ID="ID_914099773" MODIFIED="1462205785983" TEXT="collection helpers">
<node COLOR="#111111" CREATED="1461971328103" ID="ID_1434289967" LINK="https://atmospherejs.com/dburles/collection-helpers" MODIFIED="1462205785983" TEXT="dburles:collection-helpers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lists.helpers({
    </p>
    <p>
      &#160;&#160;// A list is considered to be private if it has a userId set
    </p>
    <p>
      &#160;&#160;isPrivate() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return !!this.userId;
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      ---------------------------
    </p>
    <p>
      
    </p>
    <p>
      const list = Lists.findOne();
    </p>
    <p>
      if (list.isPrivate()) {
    </p>
    <p>
      &#160;&#160;console.log('The first list is private!');
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1461971317406" ID="ID_1937292764" MODIFIED="1462205785983" TEXT="association helpers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lists.helpers({
    </p>
    <p>
      &#160;&#160;todos() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return Todos.find({listId: this._id}, {sort: {createdAt: -1}});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
    <p>
      ----------------------------------
    </p>
    <p>
      const list = Lists.findOne();
    </p>
    <p>
      console.log(`The first list has ${list.todos().count()} todos`);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1461874239693" FOLDED="true" ID="ID_863857151" MODIFIED="1463055336223" TEXT="publications &amp; data loading">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Meteor.publish('lists.public', function() {
    </p>
    <p>
      &#160;&#160;return Lists.find({
    </p>
    <p>
      &#160;&#160;&#160;&#160;userId: {$exists: false}
    </p>
    <p>
      &#160;&#160;}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;fields: Lists.publicFields
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462182684449" ID="ID_1433758566" MODIFIED="1462207077316" TEXT="a named API on the server constructing set of data to send to client">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1462182730199" ID="ID_1409515494" MODIFIED="1462205785983" TEXT="client initiates subscription to connect to publication and recieves data">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462182789663" ID="ID_1946293576" MODIFIED="1463007690574" TEXT="first batch">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462182796846" ID="ID_1582330611" MODIFIED="1463007693205" TEXT="then incremental updates">
<icon BUILTIN="full-2"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462182879063" ID="ID_1321246062" MODIFIED="1462207097853" TEXT="subscription connects mini mongo collection to the server side db">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1462183219249" ID="ID_293562105" MODIFIED="1462205785984" TEXT="pulication parameters">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462183228377" ID="ID_1877370530" MODIFIED="1462205785984" TEXT="this -&gt; this.uerId"/>
<node COLOR="#111111" CREATED="1462183268145" ID="ID_370327185" MODIFIED="1462205785984" TEXT="name of publication">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // In the case of a logged-out user, we explicitly call this.ready(),
    </p>
    <p>
      which indicates to the subscription that we&#8217;ve sent all the data
    </p>
    <p>
      we are initially going to send (in this case none).
    </p>
    <p>
      
    </p>
    <p>
      Meteor.publish('lists.private', function() {
    </p>
    <p>
      &#160;&#160;if (!this.userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return this.ready();
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;return Lists.find({
    </p>
    <p>
      &#160;&#160;&#160;&#160;userId: this.userId
    </p>
    <p>
      &#160;&#160;}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;fields: Lists.publicFields
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462183461401" ID="ID_1029741731" MODIFIED="1462617968627" TEXT="can take named argument">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Meteor.publish('todos.inList', function(listId) {
    </p>
    <p>
      &#160;&#160;// We need to check the `listId` is the type we expect
    </p>
    <p>
      &#160;&#160;new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;listId: {type: String}
    </p>
    <p>
      &#160;&#160;}).validate({ listId });
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// ...
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      Meteor.subscribe('todos.inList', list._id);
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462184001097" ID="ID_1484896010" MODIFIED="1463007743451" TEXT="put publication in same module folder as its view"/>
</node>
<node COLOR="#990000" CREATED="1462184408601" ID="ID_823245147" MODIFIED="1462617993721" TEXT="subscribing">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It is best to place the subscription as close as possible to the place where the data from the subscription is needed.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node BACKGROUND_COLOR="#fcfb11" COLOR="#111111" CREATED="1462184415921" ID="ID_983793423" MODIFIED="1462205785984" TEXT="const handle = Meteor.subscribe(&apos;lists.public&apos;);"/>
<node COLOR="#111111" CREATED="1462184451649" ID="ID_630900580" MODIFIED="1462205785984" TEXT="handle contains .ready().stop()  property">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      However, if you call Meteor.subscribe() conditionally inside a reactive context
    </p>
    <p>
      (such as an autorun, or getMeteorData in React) or via this.subscribe() in a
    </p>
    <p>
      Blaze component, then Meteor&#8217;s reactive system will automatically call this.stop()
    </p>
    <p>
      for you at the appropriate time.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1462184737682" ID="ID_1493992564" MODIFIED="1462205785984" TEXT="fetching data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Subscribing to data puts it in your client-side collection.
    </p>
    <p>
      #To use the data in your user interface, you need to
    </p>
    <p>
      query your client-side collection. There are a couple of
    </p>
    <p>
      important rules to follow when doing this.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462184744233" ID="ID_1735104331" MODIFIED="1462205785984" TEXT="always use specific queries to fetch data">
<icon BUILTIN="stop-sign"/>
</node>
<node COLOR="#111111" CREATED="1462184761433" ID="ID_1410639276" MODIFIED="1462205785984" TEXT="fetch the data nearby where you subscribe to it">
<icon BUILTIN="stop-sign"/>
<node COLOR="#111111" CREATED="1462185932394" ID="ID_1183463407" MODIFIED="1462205785984" TEXT="fetch in parent template"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462185950514" ID="ID_32380564" MODIFIED="1462205785985" TEXT="global subscriptions">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462185993434" ID="ID_891695650" MODIFIED="1462205785985" TEXT="for data you need in every view"/>
<node COLOR="#111111" CREATED="1462186004842" ID="ID_1808729871" MODIFIED="1462205785985" TEXT="better to subscribe from a layout component"/>
</node>
<node COLOR="#990000" CREATED="1462186551674" ID="ID_1620786068" MODIFIED="1462661299356" TEXT="data loading patterns">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462186563050" ID="ID_520558025" MODIFIED="1462205785985" TEXT="subscription readiness">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const handle = Meteor.subscribe('lists.public');
    </p>
    <p>
      Tracker.autorun(() =&gt; {
    </p>
    <p>
      &#160;&#160;const isReady = handle.ready();
    </p>
    <p>
      &#160;&#160;console.log(`Handle is ${isReady ? 'ready' : 'not ready'}`);&#160;
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462186572682" ID="ID_933557380" MODIFIED="1462205785985" TEXT="reactive changes to subs args">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Template.Lists_show_page.onCreated(function() {
    </p>
    <p>
      &#160;&#160;this.getListId = () =&gt; FlowRouter.getParam('_id');
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;this.autorun(() =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;this.subscribe('todos.inList', this.getListId());
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462187830378" ID="ID_1632772596" MODIFIED="1462205785985" TEXT="reactive data sources invalidates autorun">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462187848643" ID="ID_1644291731" MODIFIED="1462618045887" TEXT="subscriptions marks itself for destruction">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462187864482" ID="ID_576797791" MODIFIED="1462205785985" TEXT="tracker computation reruns">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462187889963" ID="ID_1126275385" MODIFIED="1462618057785" TEXT="if subscription args are the same, use old subs">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462187923723" ID="ID_1553984514" MODIFIED="1463053353516" TEXT="if new args, create new subscription and connect">
<icon BUILTIN="full-5"/>
</node>
<node COLOR="#111111" CREATED="1462187954315" ID="ID_1995955675" MODIFIED="1462618082813" TEXT="old subscription shut down if not used">
<icon BUILTIN="full-6"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462186591706" ID="ID_1392108165" MODIFIED="1462618113130" TEXT="publication behaviour on args change">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The server explicitly waits until all the data is sent down (the new subscription is ready)
    </p>
    <p>
      for the new subscription before removing the data from the old subscription.
    </p>
    <p>
      The idea here is to avoid flicker&#8212;you can, if desired, continue to show the old
    </p>
    <p>
      subscription&#8217;s data until the new data is ready, then instantly switch over to the new
    </p>
    <p>
      subscription&#8217;s complete data set.
    </p>
    <p>
      
    </p>
    <p>
      What this means is in general, when changing subscriptions, there&#8217;ll be a period
    </p>
    <p>
      where you are over-subscribed and there is more data on the client than you strictly
    </p>
    <p>
      asked for.
    </p>
    <p>
      
    </p>
    <p>
      <b>This is one very important reason why you should always fetch the same </b>
    </p>
    <p>
      <b>data that you have subscribed to (don&#8217;t &#8220;over-fetch&#8221;).</b>
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462186601378" ID="ID_114198675" MODIFIED="1462205785985" TEXT="pagination">
<node COLOR="#111111" CREATED="1462189082635" ID="ID_1000649880" MODIFIED="1462205785985" TEXT="page-by-page">
<node COLOR="#111111" CREATED="1462189151891" ID="ID_928813899" LINK="https://atmospherejs.com/percolate/find-from-publication" MODIFIED="1462205785985" TEXT="percolate:find-from-publication">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462189090875" ID="ID_431500891" MODIFIED="1462205785985" TEXT="infinite scroll">
<node COLOR="#111111" CREATED="1462198214783" ID="ID_1287788703" MODIFIED="1462205785986" TEXT="server">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const MAX_TODOS = 1000;
    </p>
    <p>
      
    </p>
    <p>
      Meteor.publish('todos.inList', function(listId, limit) {
    </p>
    <p>
      &#160;&#160;new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;listId: { type: String },
    </p>
    <p>
      &#160;&#160;&#160;&#160;limit: { type: Number }
    </p>
    <p>
      &#160;&#160;}).validate({ listId, limit });
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;const options = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;sort: {createdAt: -1},
    </p>
    <p>
      &#160;&#160;&#160;&#160;limit: Math.min(limit, MAX_TODOS)
    </p>
    <p>
      &#160;&#160;};
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// ...
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462198217983" ID="ID_1620071611" MODIFIED="1462205785986" TEXT="client">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Template.Lists_show_page.onCreated(function() {
    </p>
    <p>
      &#160;&#160;this.getListId = () =&gt; FlowRouter.getParam('_id');
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;this.autorun(() =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;this.subscribe('todos.inList',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;this.getListId(), this.state.get('requestedTodos'));
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      Increment that requestedTodos variable when the user
    </p>
    <p>
      clicks &#8220;load more&#8221; (or perhaps just when they scroll to the bottom of the page).
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462198306327" ID="ID_1975991946" LINK="https://atmospherejs.com/tmeasday/publish-counts" MODIFIED="1462205785986" TEXT="tmeasday:publish-counts">
<icon BUILTIN="password"/>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462198586175" ID="ID_431029326" MODIFIED="1462661301734" TEXT="client side reactive data stores">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462306098441" ID="ID_1156404846" MODIFIED="1462306101216" TEXT="reactive">
<node COLOR="#111111" CREATED="1462198673319" ID="ID_1587810929" MODIFIED="1462205785986" TEXT="reactive-var">
<node COLOR="#111111" CREATED="1462305774897" ID="ID_1710720022" MODIFIED="1462618808055" TEXT="better for local data">
<icon BUILTIN="yes"/>
</node>
<node COLOR="#111111" CREATED="1462305930217" ID="ID_185085478" MODIFIED="1462305937070" TEXT="single value items only"/>
<node COLOR="#111111" CREATED="1462305968521" ID="ID_1172893420" MODIFIED="1462305979203" TEXT="meteor add reactive-var">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462198697143" ID="ID_459278969" MODIFIED="1462205785986" TEXT="get()"/>
<node COLOR="#111111" CREATED="1462198700160" ID="ID_1984891157" MODIFIED="1462205785986" TEXT="set()"/>
</node>
<node COLOR="#111111" CREATED="1462198681496" ID="ID_869819931" MODIFIED="1462306104580" TEXT="reactive-dict">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const $window = $(window);
    </p>
    <p>
      function getDimensions() {
    </p>
    <p>
      &#160;&#160;return {
    </p>
    <p>
      &#160;&#160;&#160;&#160;width: $window.width(),
    </p>
    <p>
      &#160;&#160;&#160;&#160;height: $window.height()
    </p>
    <p>
      &#160;&#160;};
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      WindowSize = new ReactiveDict();
    </p>
    <p>
      WindowSize.set(getDimensions());
    </p>
    <p>
      $window.on('resize', () =&gt; {
    </p>
    <p>
      &#160;&#160;WindowSize.set(getDimensions());
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462305994329" ID="ID_1001665402" MODIFIED="1462305998051" TEXT="meteor add reactive-dict">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462306117841" ID="ID_414901744" MODIFIED="1462306134619" TEXT="survive refresh but not hot code push"/>
</node>
<node COLOR="#111111" CREATED="1462305319753" ID="ID_477295099" MODIFIED="1462305323171" TEXT="session">
<node COLOR="#111111" CREATED="1462305601545" ID="ID_1117045064" MODIFIED="1462618784223" TEXT="set globally">
<icon BUILTIN="yes"/>
<node COLOR="#111111" CREATED="1462305670289" ID="ID_766158819" MODIFIED="1462305683531" TEXT="survives hot code push"/>
<node COLOR="#111111" CREATED="1462305698049" ID="ID_129500967" MODIFIED="1462305702780" TEXT="resets onrefresh"/>
</node>
<node COLOR="#111111" CREATED="1462305810337" ID="ID_364510097" MODIFIED="1462305822690" TEXT="EJSON / JSON data"/>
<node COLOR="#111111" CREATED="1462306243457" ID="ID_748328000" LINK="https://github.com/okgrow/meteor-persistent-session/" MODIFIED="1462306259355" TEXT="meteor add u2622:persistent-session">
<icon BUILTIN="password"/>
<node COLOR="#111111" CREATED="1462306261761" ID="ID_731201065" MODIFIED="1462306268425" TEXT="survives refresh"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462198772176" ID="ID_1379709099" MODIFIED="1462207245271" TEXT="use local collection for many related items"/>
<node COLOR="#111111" CREATED="1462198832983" ID="ID_1964229493" MODIFIED="1462205785986" TEXT="centralize your store access"/>
<node COLOR="#111111" CREATED="1462199609736" ID="ID_1194854409" MODIFIED="1462205785986" TEXT="updating store">
<node COLOR="#111111" CREATED="1462199615256" ID="ID_1934636174" MODIFIED="1462618540151" TEXT="via method">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462199619624" ID="ID_17910120" MODIFIED="1462618551544" TEXT="via mutator on store">
<icon BUILTIN="full-2"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462199682760" ID="ID_551083177" MODIFIED="1462205785986" TEXT="advanced publications">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462199694175" ID="ID_1821418555" MODIFIED="1462205785986" TEXT="publishing relational data">
<node COLOR="#111111" CREATED="1462199996256" ID="ID_1819505566" LINK="https://atmospherejs.com/reywood/publish-composite" MODIFIED="1462205785986" TEXT="reywood:publish-composite">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The way this package works is to first establish a cursor on one collection,
    </p>
    <p>
      and then explicitly set up a second level of cursors on a second collection
    </p>
    <p>
      with the results of the first cursor. The package uses a query observer
    </p>
    <p>
      behind the scenes to trigger the subscription to change and queries
    </p>
    <p>
      to re-run whenever the source data changes.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462202265737" ID="ID_498969403" MODIFIED="1462205785987" TEXT="queries spanning multiple collections"/>
</node>
<node COLOR="#111111" CREATED="1462199704248" ID="ID_901184917" MODIFIED="1462205785987" TEXT="complex authorization"/>
<node COLOR="#111111" CREATED="1462199714160" ID="ID_123955747" MODIFIED="1462207279303" TEXT="custom publications with low level API">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Meteor.publish('custom-publication', function() {
    </p>
    <p>
      &#160;&#160;// We can add documents one at a time
    </p>
    <p>
      &#160;&#160;this.added('collection-name', 'id', {field: 'values'});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// We can call ready to indicate to the client that the initial document sent has been sent
    </p>
    <p>
      &#160;&#160;this.ready();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// We may respond to some 3rd party event and want to send notifications
    </p>
    <p>
      &#160;&#160;Meteor.setTimeout(() =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// If we want to modify a document that we've already added
    </p>
    <p>
      &#160;&#160;&#160;&#160;this.changed('collection-name', 'id', {field: 'new-value'});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;// Or if we don't want the client to see it any more
    </p>
    <p>
      &#160;&#160;&#160;&#160;this.removed('collection-name', 'id');
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// It's very important to clean up things in the subscription's onStop handler
    </p>
    <p>
      &#160;&#160;this.onStop(() =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// Perhaps kill the connection with the 3rd party server
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462202550049" ID="ID_1525959901" MODIFIED="1462205785987" TEXT="this.added()"/>
<node COLOR="#111111" CREATED="1462202558912" ID="ID_1113910558" MODIFIED="1462205785987" TEXT="this.changed()"/>
<node COLOR="#111111" CREATED="1462202564449" ID="ID_1279327077" MODIFIED="1462205785987" TEXT="this.removed()"/>
</node>
<node COLOR="#111111" CREATED="1462199732480" ID="ID_979965257" MODIFIED="1462205785987" TEXT="sub lifecycle">
<node BACKGROUND_COLOR="#fcfb11" COLOR="#111111" CREATED="1462202826369" ID="ID_1898993602" MODIFIED="1462205785987" TEXT="Meteor.publish(&apos;Posts.all&apos;, function() {   return Posts.find({}, {limit: 10}); });"/>
<node COLOR="#111111" CREATED="1462202857769" ID="ID_302190891" MODIFIED="1462205785987" TEXT="on client subscription">
<node COLOR="#111111" CREATED="1462202869617" ID="ID_1672129915" MODIFIED="1462618971695" TEXT="client sends subcribe message with name of subscription">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462202892353" ID="ID_153380629" MODIFIED="1462618989200" TEXT="server starts subscription with publication handle function">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462202911585" ID="ID_835064359" MODIFIED="1462205785987" TEXT="handle see the cursor return">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462202931017" ID="ID_1311120086" MODIFIED="1462205785987" TEXT="server sets up query observer on cursor">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462202953633" ID="ID_1771386895" MODIFIED="1462205785987" TEXT="observer fetches docs and passes to sub via this.added()">
<icon BUILTIN="full-5"/>
</node>
<node COLOR="#111111" CREATED="1462203051417" ID="ID_951889653" MODIFIED="1462205785987" TEXT="sub passes docs to client mergebox on server, data combined and added()/changed() message sent to client">
<icon BUILTIN="full-6"/>
</node>
<node COLOR="#111111" CREATED="1462203122817" ID="ID_829568879" MODIFIED="1462205785987" TEXT="pub calls the .ready() and sends ready msg to client">
<icon BUILTIN="full-7"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462203656809" ID="ID_868890532" MODIFIED="1462619048927" TEXT="on subscription stoppage">
<node COLOR="#111111" CREATED="1462203668265" ID="ID_452868214" MODIFIED="1462205785987" TEXT="client sends unsub message ">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462203687049" ID="ID_1304303922" MODIFIED="1462205785988" TEXT="server stops internal subs objects">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462203704473" ID="ID_300090556" MODIFIED="1462205785988" TEXT="any this.onStop() runs">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462203731457" ID="ID_1283894550" MODIFIED="1462205785988" TEXT="all docs tracked by this subs removed from mergerbox">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462203751289" ID="ID_350314382" MODIFIED="1462205785988" TEXT="nosub message sent to client">
<icon BUILTIN="full-5"/>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462203799905" ID="ID_402779293" MODIFIED="1462205785988" TEXT="REST API&apos;s">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462203841361" ID="ID_1502509565" MODIFIED="1462205785988" TEXT="loading from REST endpoint">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const POLL_INTERVAL = 5000;
    </p>
    <p>
      
    </p>
    <p>
      Meteor.publish('polled-publication', function() {
    </p>
    <p>
      &#160;&#160;const publishedKeys = {};
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;const poll = () =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// Let's assume the data comes back as an array of JSON documents, with an _id field, for simplicity
    </p>
    <p>
      &#160;&#160;&#160;&#160;const data = HTTP.get(REST_URL, REST_OPTIONS);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;data.forEach((doc) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;if (publishedKeys[doc._id]) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.changed(COLLECTION_NAME, doc._id, doc);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;publishedKeys[doc._id] = true;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (publishedKeys[doc._id]) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;this.added(COLLECTION_NAME, doc._id, doc);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;};
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;poll();
    </p>
    <p>
      &#160;&#160;this.ready();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;const interval = Meteor.setInterval(poll, POLL_INTERVAL);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;this.onStop(() =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;Meteor.clearInterval(interval);
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462203851457" ID="ID_98458482" MODIFIED="1462205785988" TEXT="creating a REST endpoint">
<node COLOR="#111111" CREATED="1462204818162" ID="ID_560774993" LINK="https://atmospherejs.com/simple/rest" MODIFIED="1463055336017" TEXT=" simple:rest">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If the data we want to publish is the same as what we already publish via a
    </p>
    <p>
      publication, then we can use the simple:rest package to do this really easily.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1461874250509" FOLDED="true" ID="ID_586654330" MODIFIED="1463056475599" TEXT="methods">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When a Method is called, it usually runs twice&#8212;once on the client to simulate the
    </p>
    <p>
      result for Optimistic UI, and again on the server to make the actual change to
    </p>
    <p>
      the database. If a method unexpectedly fails the optimistic changes will roll back
    </p>
    <p>
      and the Minimongo database will end up in a consistent state.
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462205572754" ID="ID_125988325" MODIFIED="1462285392477" TEXT="defining method calls">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Meteor.methods({
    </p>
    <p>
      &#160;&#160;'todos.updateText'({ todoId, newText }) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;todoId: { type: String },
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;newText: { type: String }
    </p>
    <p>
      &#160;&#160;&#160;&#160;}).validate({ todoId, newText });
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;const todo = Todos.findOne(todoId);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (!todo.editableBy(this.userId)) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new Meteor.Error('todos.updateText.unauthorized',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'Cannot edit todos in a private list that is not yours');
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Todos.update(todoId, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;$set: { text: newText }
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462285319433" ID="ID_941779356" MODIFIED="1462619201984" TEXT="define in commong code">
<icon BUILTIN="yes"/>
</node>
<node COLOR="#111111" CREATED="1462285338170" ID="ID_1095110697" MODIFIED="1462285345558" TEXT="validate method arguments">
<node COLOR="#111111" CREATED="1462285358081" ID="ID_1105591466" LINK="https://atmospherejs.com/aldeed/simple-schema" MODIFIED="1462619271901" TEXT="aldeed:simple-schema">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462285409553" ID="ID_257375438" MODIFIED="1462285422923" TEXT="for server code you want to call form client"/>
<node COLOR="#111111" CREATED="1462285436713" ID="ID_1829196085" MODIFIED="1462286283792" TEXT="calling">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Meteor.call('todos.updateText', {
    </p>
    <p>
      &#160;&#160;todoId: '12345',
    </p>
    <p>
      &#160;&#160;newText: 'This is a todo item.'
    </p>
    <p>
      }, (err, res) =&gt; {
    </p>
    <p>
      &#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;alert(err);
    </p>
    <p>
      &#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// success!
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462286287130" ID="ID_563510648" MODIFIED="1463056015041" TEXT="boilerplate">
<icon BUILTIN="idea"/>
<icon BUILTIN="button_ok"/>
<node COLOR="#111111" CREATED="1462286318434" ID="ID_1775333256" LINK="https://atmospherejs.com/mdg/validated-method" MODIFIED="1462288714954" TEXT="mdg:validated-method">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      wont call server method on failure
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462286845554" ID="ID_437598330" MODIFIED="1463056010001" TEXT="declaring">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      export const updateText = new ValidatedMethod({
    </p>
    <p>
      &#160;&#160;name: 'todos.updateText',
    </p>
    <p>
      &#160;&#160;validate: new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;todoId: { type: String },
    </p>
    <p>
      &#160;&#160;&#160;&#160;newText: { type: String }
    </p>
    <p>
      &#160;&#160;}).validator(),
    </p>
    <p>
      &#160;&#160;run({ todoId, newText }) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;const todo = Todos.findOne(todoId);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (!todo.editableBy(this.userId)) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new Meteor.Error('todos.updateText.unauthorized',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'Cannot edit todos in a private list that is not yours');
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Todos.update(todoId, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;$set: { text: newText }
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462286848361" ID="ID_261043528" MODIFIED="1463056012593" TEXT="calling">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import { updateText } from './path/to/methods.js';
    </p>
    <p>
      
    </p>
    <p>
      // Call the Method
    </p>
    <p>
      updateText.call({
    </p>
    <p>
      &#160;&#160;todoId: '12345',
    </p>
    <p>
      &#160;&#160;newText: 'This is a todo item.'
    </p>
    <p>
      }, (err, res) =&gt; {
    </p>
    <p>
      &#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;alert(err);
    </p>
    <p>
      &#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// success!
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      // Call the validation only
    </p>
    <p>
      updateText.validate({ wrong: 'args'});
    </p>
    <p>
      
    </p>
    <p>
      // Call the Method with custom userId in a test
    </p>
    <p>
      updateText.run.call({ userId: 'abcd' }, {
    </p>
    <p>
      &#160;&#160;todoId: '12345',
    </p>
    <p>
      &#160;&#160;newText: 'This is a todo item.'
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462205593306" ID="ID_1645313032" MODIFIED="1462205785988" TEXT="error handling">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462287022177" ID="ID_1973638067" MODIFIED="1462287041604" TEXT="regular JS errors for internal errors"/>
<node COLOR="#111111" CREATED="1462287126466" ID="ID_1189434723" MODIFIED="1462287132527" TEXT="Meteor.Error">
<node COLOR="#111111" CREATED="1462287133698" ID="ID_1911643164" MODIFIED="1462287140531" TEXT="general runtime errors"/>
<node COLOR="#111111" CREATED="1462287142274" ID="ID_789682208" MODIFIED="1462287144478" TEXT="args">
<node COLOR="#111111" CREATED="1462287145689" ID="ID_163314421" MODIFIED="1462621143440" TEXT="error">
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462287213250" ID="ID_262442092" MODIFIED="1462287222179" TEXT="short"/>
<node COLOR="#111111" CREATED="1462287222666" ID="ID_863904863" MODIFIED="1462287276874" TEXT="prefixed with method name">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      'todos.updateText.unauthorized'
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462287168082" ID="ID_782418518" MODIFIED="1462621145888" TEXT="reason">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for the developer, not for the end user
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462287171754" ID="ID_335621482" MODIFIED="1462621147080" TEXT="details">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      optional
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462288189010" ID="ID_619969642" MODIFIED="1462288199150" TEXT="handling">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Call the Method
    </p>
    <p>
      updateText.call({
    </p>
    <p>
      &#160;&#160;todoId: '12345',
    </p>
    <p>
      &#160;&#160;newText: 'This is a todo item.'
    </p>
    <p>
      }, (err, res) =&gt; {
    </p>
    <p>
      &#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (err.error === 'todos.updateText.unauthorized') {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// Displaying an alert is probably not what you would do in
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// a real app; you should have some nice UI to display this
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// error, and probably use an i18n library to generate the
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// message from the error code.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;alert('You aren\'t allowed to edit this todo item');
    </p>
    <p>
      &#160;&#160;&#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// Unexpected error, handle it in the UI somehow
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// success!
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462288843770" ID="ID_1505515637" MODIFIED="1462292054862" TEXT="stub handling">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In this case, you can wrap server-side-only logic in a block that checks for a
    </p>
    <p>
      m ethod simulation:
    </p>
    <p>
      
    </p>
    <p>
      if (!this.isSimulation) {
    </p>
    <p>
      &#160;&#160;// Logic that depends on server environment here
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1462205599530" ID="ID_438968064" MODIFIED="1463056353175" TEXT="calling method from form">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // This Method encodes the form validation requirements.
    </p>
    <p>
      // By defining them in the Method, we do client and server-side
    </p>
    <p>
      // validation in one place.
    </p>
    <p>
      
    </p>
    <p>
      export const insert = new ValidatedMethod({
    </p>
    <p>
      &#160;&#160;name: 'Invoices.methods.insert',
    </p>
    <p>
      &#160;&#160;validate: new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;email: { type: String, regEx: SimpleSchema.RegEx.Email },
    </p>
    <p>
      &#160;&#160;&#160;&#160;description: { type: String, min: 5 },
    </p>
    <p>
      &#160;&#160;&#160;&#160;amount: { type: String, regEx: /^\d*\.(\d\d)?$/ }
    </p>
    <p>
      &#160;&#160;}).validator(),
    </p>
    <p>
      &#160;&#160;run(newInvoice) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// In here, we can be sure that the newInvoice argument is
    </p>
    <p>
      &#160;&#160;&#160;&#160;// validated.
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (!this.userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new Meteor.Error('Invoices.methods.insert.not-logged-in',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'Must be logged in to create an invoice.');
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Invoices.insert(newInvoice)
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      /////////////////////////////////////
    </p>
    <p>
      
    </p>
    <p>
      &lt;template name=&quot;Invoices_newInvoice&quot;&gt;
    </p>
    <p>
      &#160;&#160;&lt;form class=&quot;Invoices_newInvoice&quot;&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;label for=&quot;email&quot;&gt;Recipient email&lt;/label&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;input type=&quot;email&quot; name=&quot;email&quot; /&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;{{#each error in errors &quot;email&quot;}}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&lt;div class=&quot;form-error&quot;&gt;{{error}}&lt;/div&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;{{/each}}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;label for=&quot;description&quot;&gt;Item description&lt;/label&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;input type=&quot;text&quot; name=&quot;description&quot; /&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;{{#each error in errors &quot;description&quot;}}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&lt;div class=&quot;form-error&quot;&gt;{{error}}&lt;/div&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;{{/each}}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;label for=&quot;amount&quot;&gt;Amount owed&lt;/label&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;input type=&quot;text&quot; name=&quot;amount&quot; /&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;{{#each error in errors &quot;amount&quot;}}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&lt;div class=&quot;form-error&quot;&gt;{{error}}&lt;/div&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;{{/each}}
    </p>
    <p>
      &#160;&#160;&lt;/form&gt;
    </p>
    <p>
      &lt;/template&gt;
    </p>
    <p>
      
    </p>
    <p>
      /////////////////////////
    </p>
    <p>
      
    </p>
    <p>
      import { insert } from '../api/invoices/methods.js';
    </p>
    <p>
      
    </p>
    <p>
      Template.Invoices_newInvoice.onCreated(function() {
    </p>
    <p>
      &#160;&#160;this.errors = new ReactiveDict();
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      Template.Invoices_newInvoice.helpers({
    </p>
    <p>
      &#160;&#160;errors(fieldName) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return this.errors.get(fieldName);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      Template.Invoices_newInvoice.events({
    </p>
    <p>
      &#160;&#160;'submit .Invoices_newInvoice'(event) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;const instance = Template.instance();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;const data = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;email: event.target.email.value,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;description: event.target.description.value,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;amount: event.target.amount.value
    </p>
    <p>
      &#160;&#160;&#160;&#160;};
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;insert.call(data, (err, res) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (err.error === 'validation-error') {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Initialize error object
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;const errors = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;email: [],
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;description: [],
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;amount: []
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;};
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Go through validation errors returned from Method
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;err.details.forEach((fieldError) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// XXX i18n
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;errors[fieldError.name].push(fieldError.type);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Update ReactiveDict, errors will show up in the UI
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;instance.errors.set(errors);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1462205608106" ID="ID_1428063372" MODIFIED="1462205785988" TEXT="loading data with methods">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462308167394" ID="ID_1534227832" MODIFIED="1462308172425" TEXT="not recommended"/>
<node COLOR="#111111" CREATED="1462308173442" ID="ID_475288971" MODIFIED="1462308397276" TEXT="used when you want control of when data is available">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // In client-side code, declare a local collection
    </p>
    <p>
      // by passing `null` as the argument
    </p>
    <p>
      ScoreAverages = new Mongo.Collection(null);
    </p>
    <p>
      
    </p>
    <p>
      /////////////////////////////////////////////////////////////////////
    </p>
    <p>
      
    </p>
    <p>
      import { calculateAverages } from '../api/games/methods.js';
    </p>
    <p>
      
    </p>
    <p>
      function updateAverages() {
    </p>
    <p>
      &#160;&#160;// Clean out result cache
    </p>
    <p>
      &#160;&#160;ScoreAverages.remove({});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// Call a Method that does an expensive computation
    </p>
    <p>
      &#160;&#160;calculateAverages.call((err, res) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;res.forEach((item) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;ScoreAverages.insert(item);
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462308672666" ID="ID_957019063" MODIFIED="1462308686182" TEXT="only uses client side collection"/>
</node>
<node COLOR="#990000" CREATED="1462205615066" ID="ID_659644652" MODIFIED="1462205785989" TEXT="advanced concepts">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462308802746" ID="ID_1269722971" MODIFIED="1462308810635" TEXT="lifecycle">
<node COLOR="#111111" CREATED="1462308870394" ID="ID_1779455280" MODIFIED="1462311349748" TEXT="method simulation runs on client">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462308998498" ID="ID_409928343" MODIFIED="1462311352772" TEXT="method DDP ">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462310474178" ID="ID_786120566" MODIFIED="1462311354012" TEXT="method runs on server">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462310515106" ID="ID_1853141517" MODIFIED="1462311355324" TEXT="return value sent to client">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462310620530" ID="ID_741380050" MODIFIED="1462311356964" TEXT="any DDP publications affected by method not update">
<icon BUILTIN="full-5"/>
<node COLOR="#111111" CREATED="1462310647754" ID="ID_107300683" MODIFIED="1462310722473" TEXT="UI not updated yet"/>
</node>
<node COLOR="#111111" CREATED="1462310778650" ID="ID_1971621004" MODIFIED="1462311358892" TEXT="`updated`">
<icon BUILTIN="full-6"/>
<node COLOR="#111111" CREATED="1462310787146" ID="ID_1731169216" MODIFIED="1462310790788" TEXT="sent to client"/>
<node COLOR="#111111" CREATED="1462310791202" ID="ID_1843405774" MODIFIED="1462310801567" TEXT="data replaced with server result"/>
<node COLOR="#111111" CREATED="1462310820266" ID="ID_1083559822" MODIFIED="1462310827474" TEXT="method callback fires"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462308811338" ID="ID_559722748" MODIFIED="1462308816673" TEXT="benefits">
<node COLOR="#111111" CREATED="1462311160082" ID="ID_294565236" MODIFIED="1462311190540" TEXT="non-blocking synchronous-style APIs"/>
<node COLOR="#111111" CREATED="1462311195186" ID="ID_923273346" MODIFIED="1462621180121" TEXT="methods return in order">
<node COLOR="#111111" CREATED="1462311299010" ID="ID_1397815108" MODIFIED="1462311306202" TEXT="this.unblock()"/>
<node COLOR="#111111" CREATED="1462311308970" ID="ID_1054882218" MODIFIED="1462311314966" TEXT="wait: true"/>
</node>
<node COLOR="#111111" CREATED="1462311325394" ID="ID_372590115" MODIFIED="1462311335652" TEXT="change tracking for optimistic UI"/>
</node>
<node COLOR="#111111" CREATED="1462308817714" ID="ID_1306749310" MODIFIED="1462311508468" TEXT="can call methods from another method"/>
<node COLOR="#111111" CREATED="1462308848131" ID="ID_446679861" MODIFIED="1462312393979" TEXT="consistent ID generation and optimistic UI"/>
<node COLOR="#111111" CREATED="1462308859938" ID="ID_1285788271" MODIFIED="1462308863403" TEXT="method retries">
<node COLOR="#111111" CREATED="1462312504802" ID="ID_1131883655" MODIFIED="1462312577612" TEXT="can happen on connection error"/>
<node COLOR="#111111" CREATED="1462312464491" ID="ID_1687997340" MODIFIED="1462312577612" TEXT="mostly inocuous"/>
<node COLOR="#111111" CREATED="1462312473898" ID="ID_712186916" MODIFIED="1462312577612" TEXT="affects">
<node COLOR="#111111" CREATED="1462312478427" ID="ID_1062071170" MODIFIED="1462621194928" TEXT="$inc">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462312486898" ID="ID_925566498" MODIFIED="1462621195968" TEXT="$push">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462312491411" ID="ID_280638749" MODIFIED="1462621196824" TEXT="calls to external APIs">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1461874254021" FOLDED="true" ID="ID_1140560101" MODIFIED="1463060027010" TEXT="users &amp; accounts">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462312876699" ID="ID_1068388373" MODIFIED="1462312879756" TEXT="features">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462365613280" ID="ID_1205938015" MODIFIED="1462621242121" TEXT="this.userId accessable in">
<node COLOR="#111111" CREATED="1462365671383" ID="ID_1576638710" MODIFIED="1462621246315" TEXT="methods">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462365680463" ID="ID_1348351253" MODIFIED="1462621248930" TEXT="publications">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462365687327" ID="ID_323754656" MODIFIED="1462621251545" TEXT="client">
<icon BUILTIN="full-3"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462365636680" ID="ID_1686498819" MODIFIED="1462365643706" TEXT="login state tracked"/>
<node COLOR="#111111" CREATED="1462365702325" ID="ID_1367226643" MODIFIED="1462365709391" TEXT="accounts-base">
<node COLOR="#111111" CREATED="1462365711511" ID="ID_44421260" MODIFIED="1462365748227" TEXT="Meteor.users users collection">
<node COLOR="#111111" CREATED="1462365750959" ID="ID_148631440" MODIFIED="1462365764201" TEXT="Meteor.userId() on client side"/>
<node COLOR="#111111" CREATED="1462365765263" ID="ID_1273175492" MODIFIED="1462365776146" TEXT="Meteor.user() on client side"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462312882859" ID="ID_1370960822" MODIFIED="1462312891270" TEXT="fast prototyping">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462365852696" ID="ID_1991221960" MODIFIED="1462365854042" TEXT="meteor add accounts-ui"/>
<node COLOR="#111111" CREATED="1462367003503" ID="ID_194715615" MODIFIED="1462367005066" TEXT="{{&gt; loginButtons}}"/>
<node COLOR="#111111" CREATED="1462367867920" ID="ID_1114030304" MODIFIED="1462367873864" TEXT="{{&gt; atForm}} with no router"/>
<node COLOR="#111111" CREATED="1462367007463" ID="ID_678712144" MODIFIED="1462367020790" TEXT="pick a provider">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # pick one or more of the below
    </p>
    <p>
      meteor add accounts-password
    </p>
    <p>
      meteor add accounts-facebook
    </p>
    <p>
      meteor add accounts-google
    </p>
    <p>
      meteor add accounts-github
    </p>
    <p>
      meteor add accounts-twitter
    </p>
    <p>
      meteor add accounts-meetup
    </p>
    <p>
      meteor add accounts-meteor-developer
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1462312903507" ID="ID_1967224508" MODIFIED="1462312912204" TEXT="customizable UI">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462367120784" ID="ID_1761648729" MODIFIED="1462367124045" TEXT="use any router"/>
<node COLOR="#111111" CREATED="1462367246950" ID="ID_1640438543" MODIFIED="1462367253768" TEXT="build own template">
<node COLOR="#111111" CREATED="1462367254887" ID="ID_4904749" LINK="https://atmospherejs.com/useraccounts/core" MODIFIED="1462367583451" TEXT="useraccounts:core">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462368159432" ID="ID_1358474256" LINK="https://atmospherejs.com/aldeed/template-extension" MODIFIED="1462368171962" TEXT="aldeed:template-extension">
<icon BUILTIN="password"/>
<node COLOR="#111111" CREATED="1462368251040" ID="ID_130327683" MODIFIED="1462368265564" TEXT="for BLAZE templates"/>
</node>
<node COLOR="#111111" CREATED="1462367610952" ID="ID_1796202484" LINK="https://atmospherejs.com/useraccounts/unstyled" MODIFIED="1462367622419" TEXT="useraccounts:unstyled">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462368293208" ID="ID_1852614194" MODIFIED="1462368314342" TEXT="customizing routes"/>
</node>
<node COLOR="#990000" CREATED="1462312912755" ID="ID_824339499" MODIFIED="1462312917202" TEXT="password login">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462369377496" ID="ID_563469065" MODIFIED="1462370172841" TEXT="meteor add accounts-password">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Ensuring every user has an email address, should be in server-side code
    </p>
    <p>
      Accounts.validateNewUser((user) =&gt; {
    </p>
    <p>
      &#160;&#160;new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;_id: { type: String },
    </p>
    <p>
      &#160;&#160;&#160;&#160;emails: { type: Array },
    </p>
    <p>
      &#160;&#160;&#160;&#160;'emails.$': { type: Object },
    </p>
    <p>
      &#160;&#160;&#160;&#160;'emails.$.address': { type: String },
    </p>
    <p>
      &#160;&#160;&#160;&#160;'emails.$.verified': { type: Boolean },
    </p>
    <p>
      &#160;&#160;&#160;&#160;createdAt: { type: Date },
    </p>
    <p>
      &#160;&#160;&#160;&#160;services: { type: Object, blackbox: true }
    </p>
    <p>
      &#160;&#160;}).validate(user);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// Return true to allow user creation to proceed
    </p>
    <p>
      &#160;&#160;return true;
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462370238861" ID="ID_117366394" MODIFIED="1462370258162" TEXT="supports multiple emails via accounts-password">
<node COLOR="#111111" CREATED="1462370268952" ID="ID_1519916169" MODIFIED="1462370277557" TEXT="set a `primary` email address"/>
</node>
<node COLOR="#111111" CREATED="1462370335121" ID="ID_1460703108" MODIFIED="1462370349734" TEXT="dealing with case sensitivity">
<node COLOR="#111111" CREATED="1462370364199" ID="ID_661699942" LINK="http://docs.meteor.com/#/full/Accounts-findUserByUsername" MODIFIED="1462370375693" TEXT="Accounts.findUserByUsername"/>
<node COLOR="#111111" CREATED="1462370383696" ID="ID_1014422231" LINK="http://docs.meteor.com/#/full/Accounts-findUserByEmail" MODIFIED="1462370393618" TEXT="Accounts.findUserByEmail"/>
</node>
<node COLOR="#111111" CREATED="1462370428505" ID="ID_1807644132" MODIFIED="1462370434283" TEXT="email flows">
<node COLOR="#111111" CREATED="1462622281325" HGAP="88" ID="ID_712806189" MODIFIED="1462622629913" TEXT="stages of" VSHIFT="13">
<node COLOR="#111111" CREATED="1462370436071" ID="ID_1200661541" MODIFIED="1462372111190" TEXT="password reset">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="color: #111111"><font color="#111111">complete process</font></span>
    </p>
    <ul>
      <li>
        <span class="l"><a target="_blank" href="http://docs.meteor.com/#/full/accounts_resetpassword">~</a></span><a target="_blank" href="http://docs.meteor.com/#/full/accounts_resetpassword">&#160;<span style="color: #111111"><font color="#111111">Accounts.resetPassword </font></span></a>
      </li>
      <li>
        <span class="l"><a target="_blank" href="http://docs.meteor.com/#/full/accounts_verifyemail">~</a></span><a target="_blank" href="http://docs.meteor.com/#/full/accounts_verifyemail">&#160;<span style="color: #111111"><font color="#111111">Accounts.verifyEmail</font></span>&#160;</a>
      </li>
    </ul>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462370460561" ID="ID_1806034410" MODIFIED="1462372159395" TEXT="user enrollment">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A new user is created by an administrator, but no password is set. When the
    </p>
    <p>
      user clicks the link in their email, they are taken to a page where they can set
    </p>
    <p>
      a new password for their account. Very similar to password reset.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462370472217" ID="ID_1106505477" MODIFIED="1462622291321" TEXT="email verification">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When the user clicks the link in their email, the application records that this email does indeed belong to the correct user.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462622563990" HGAP="85" ID="ID_1984283712" MODIFIED="1462622622833" TEXT="building it with accounts-password" VSHIFT="31">
<node COLOR="#111111" CREATED="1462370607777" ID="ID_931516988" MODIFIED="1462372094923" TEXT="sending email">
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462370615136" ID="ID_1766525487" LINK="http://docs.meteor.com/#/full/accounts_sendresetpasswordemail" MODIFIED="1462370633638" TEXT="Accounts.sendResetPasswordEmail"/>
<node COLOR="#111111" CREATED="1462370635177" ID="ID_323039514" LINK="http://docs.meteor.com/#/full/accounts_sendenrollmentemail" MODIFIED="1462370654238" TEXT="Accounts.sendEnrollmentEmail"/>
<node COLOR="#111111" CREATED="1462370655673" ID="ID_1245455516" LINK="http://docs.meteor.com/#/full/accounts_sendverificationemail" MODIFIED="1462370674332" TEXT="Accounts.sendVerificationEmail"/>
<node COLOR="#111111" CREATED="1462370713039" ID="ID_260864192" LINK="http://docs.meteor.com/#/full/accounts_emailtemplates" MODIFIED="1462370727437" TEXT="generated using  Accounts.emailTemplates"/>
</node>
<node COLOR="#111111" CREATED="1462370807113" ID="ID_1905343248" MODIFIED="1462622588948" TEXT="identify clicked email link">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Accounts.onResetPasswordLink((token, done) =&gt; {
    </p>
    <p>
      &#160;&#160;// Display the password reset UI, get the new password...
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;Accounts.resetPassword(token, newPassword, (err) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// Display error
    </p>
    <p>
      &#160;&#160;&#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// Resume normal operation
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;done();
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      })
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462370817945" ID="ID_1427206856" LINK="http://docs.meteor.com/#/full/Accounts-onResetPasswordLink" MODIFIED="1462370865258" TEXT="Accounts.onResetPasswordLink"/>
<node COLOR="#111111" CREATED="1462370820953" ID="ID_1347265018" LINK="http://docs.meteor.com/#/full/Accounts-onEnrollmentLink" MODIFIED="1462370876091" TEXT="Accounts.onEnrollmentLink"/>
<node COLOR="#111111" CREATED="1462370822297" ID="ID_156826343" LINK="http://docs.meteor.com/#/full/Accounts-onEmailVerificationLink" MODIFIED="1462370885409" TEXT="Accounts.onEmailVerificationLink"/>
<node COLOR="#111111" CREATED="1462370982937" ID="ID_974679576" MODIFIED="1462371891611" TEXT="custome URL">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If you want a different URL for your reset password page, you need to customize
    </p>
    <p>
      it using the Accounts.urls option:
    </p>
    <p>
      
    </p>
    <p>
      Accounts.urls.resetPassword = (token) =&gt; {
    </p>
    <p>
      &#160;&#160;return Meteor.absoluteUrl(`reset-password/${token}`);
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      If you have customized the URL, you will need to add a new route to your router
    </p>
    <p>
      that handles the URL you have specified, and the default
    </p>
    <p>
      Accounts.onResetPasswordLink and friends won&#8217;t work for you.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462371932602" ID="ID_1684890787" MODIFIED="1462622592343" TEXT="complete process">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      After you have called one of the two functions above or the user has cancelled
    </p>
    <p>
      the process, call the done function you got in the link callback. This will tell
    </p>
    <p>
      Meteor to get out of the special state it enters when you&#8217;re doing one of the email
    </p>
    <p>
      account flows.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462371940489" ID="ID_897956429" LINK="http://docs.meteor.com/#/full/accounts_resetpassword" MODIFIED="1462372005377" TEXT="Accounts.resetPassword ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      this one should be used both for resetting the password, and enrolling a new user; it accepts both kinds of tokens.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462371939889" ID="ID_908078334" LINK="http://docs.meteor.com/#/full/accounts_verifyemail" MODIFIED="1462371996241" TEXT="Accounts.verifyEmail"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462372254650" ID="ID_614482311" MODIFIED="1462372261373" TEXT="custom account emails">
<node COLOR="#111111" CREATED="1462372396937" ID="ID_1985020842" LINK="http://docs.meteor.com/#/full/accounts_emailtemplates" MODIFIED="1462382884165" TEXT="Accounts.emailTemplates"/>
<node COLOR="#111111" CREATED="1462373291488" ID="ID_1453130287" MODIFIED="1462382884166" TEXT="HTML emails">
<node COLOR="#111111" CREATED="1462373309153" ID="ID_1551962816" LINK="https://github.com/leemunroe/responsive-html-email-template" MODIFIED="1462382884166" TEXT="responsive template"/>
<node COLOR="#111111" CREATED="1462373315753" ID="ID_459025561" LINK="http://foundation.zurb.com/emails/email-templates.html" MODIFIED="1462382884166" TEXT="framework"/>
<node COLOR="#111111" CREATED="1462373319306" ID="ID_468791039" LINK="http://blog.mailgun.com/transactional-html-email-templates/" MODIFIED="1462382884167" TEXT="info"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462312917707" ID="ID_902515142" MODIFIED="1462373600850" TEXT="OAuth login">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;Facebook with accounts-facebook
    </p>
    <p>
      &#160;&#160;&#160;&#160;Google with accounts-google
    </p>
    <p>
      &#160;&#160;&#160;&#160;GitHub with accounts-github
    </p>
    <p>
      &#160;&#160;&#160;&#160;Twitter with accounts-twitter
    </p>
    <p>
      &#160;&#160;&#160;&#160;Meetup with accounts-meetup
    </p>
    <p>
      &#160;&#160;&#160;&#160;Meteor Developer Accounts with accounts-meteor-developer
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462373624722" ID="ID_521211984" MODIFIED="1462624630496" TEXT="loggin in">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If you are using an off-the-shelf login UI like accounts-ui or useraccounts, you
    </p>
    <p>
      don&#8217;t need to write any code after adding the relevant package from the list above.
    </p>
    <p>
      
    </p>
    <p>
      If you are building a login experience from scratch, you can log in programmatically
    </p>
    <p>
      using the Meteor.loginWith&lt;Service&gt; function. It looks like this:
    </p>
    <p>
      
    </p>
    <p>
      Meteor.loginWithFacebook({
    </p>
    <p>
      &#160;&#160;requestPermissions: ['user_friends', 'public_profile', 'email']
    </p>
    <p>
      }, (err) =&gt; {
    </p>
    <p>
      &#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// handle error
    </p>
    <p>
      &#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// successful login!
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462373799122" ID="ID_1883292857" MODIFIED="1462382884167" TEXT="client ID &amp; secret">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462373806978" ID="ID_420689155" MODIFIED="1462382884168" TEXT="redirect URL">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462373812410" ID="ID_964786534" MODIFIED="1462382884168" TEXT="permissions">
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462373911890" ID="ID_1025990208" MODIFIED="1462382884168" TEXT="need users access token">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Given a userId, get the user's Facebook access token
    </p>
    <p>
      const user = Meteor.users.findOne(userId);
    </p>
    <p>
      const fbAccessToken = user.services.facebook.accessToken;
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462373984650" ID="ID_1451999071" MODIFIED="1462382884168" TEXT="use http package"/>
<node COLOR="#111111" CREATED="1462374069850" ID="ID_1093307741" MODIFIED="1462382884168" TEXT="use atmosphere package">
<node COLOR="#111111" CREATED="1462374087834" ID="ID_747446450" LINK="https://www.npmjs.com/package/fbgraph" MODIFIED="1462382884168" TEXT="fbgraph"/>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462312932339" ID="ID_783508275" MODIFIED="1462312943012" TEXT="Loading &amp; displaying user data">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462378775315" ID="ID_1533644677" MODIFIED="1462382884169" TEXT="server">
<node COLOR="#111111" CREATED="1462378753411" ID="ID_1766486095" MODIFIED="1462382884169" TEXT="this.userId"/>
<node COLOR="#111111" CREATED="1462378781428" ID="ID_310867339" MODIFIED="1462382884169" TEXT="no global logged in state"/>
<node COLOR="#111111" CREATED="1462378841810" ID="ID_913898742" MODIFIED="1462382884169" TEXT="use in methods and publications">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Accessing this.userId inside a publication
    </p>
    <p>
      Meteor.publish('lists.private', function() {
    </p>
    <p>
      &#160;&#160;if (!this.userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return this.ready();
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;return Lists.find({
    </p>
    <p>
      &#160;&#160;&#160;&#160;userId: this.userId
    </p>
    <p>
      &#160;&#160;}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;fields: Lists.publicFields
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      // Accessing this.userId inside a Method
    </p>
    <p>
      Meteor.methods({
    </p>
    <p>
      &#160;&#160;'todos.updateText'({ todoId, newText }) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;todoId: { type: String },
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;newText: { type: String }
    </p>
    <p>
      &#160;&#160;&#160;&#160;}).validate({ todoId, newText }),
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;const todo = Todos.findOne(todoId);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (!todo.editableBy(this.userId)) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new Meteor.Error('todos.updateText.unauthorized',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;'Cannot edit todos in a private list that is not yours');
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Todos.update(todoId, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;$set: { text: newText }
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462378799948" ID="ID_1062336077" MODIFIED="1462382884169" TEXT="client">
<node COLOR="#111111" CREATED="1462378699476" ID="ID_1624943883" MODIFIED="1462382884169" TEXT="Meteor.userId()"/>
</node>
<node COLOR="#111111" CREATED="1462378896090" ID="ID_1280764989" MODIFIED="1462382884170" TEXT="Meteor.users collection">
<node COLOR="#111111" CREATED="1462379017923" ID="ID_280912359" MODIFIED="1462383115879" TEXT="be careful if publishing user data">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462379158299" ID="ID_545768702" MODIFIED="1462383117583" TEXT="denormalize top level fields">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462379167146" ID="ID_1145230653" MODIFIED="1462383118311" TEXT="dont use profile.name?">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462379551244" ID="ID_1602355509" MODIFIED="1462383119455" TEXT="use case insensitive version for finding users">
<icon BUILTIN="full-4"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462312945803" ID="ID_1994596427" MODIFIED="1462312950783" TEXT="custom user data">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462379785242" ID="ID_1329085997" MODIFIED="1462382884170" TEXT="add top-level fields onto user document">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Using address schema from schema.org
    </p>
    <p>
      // https://schema.org/PostalAddress
    </p>
    <p>
      const newMailingAddress = {
    </p>
    <p>
      &#160;&#160;addressCountry: 'US',
    </p>
    <p>
      &#160;&#160;addressLocality: 'Seattle',
    </p>
    <p>
      &#160;&#160;addressRegion: 'WA',
    </p>
    <p>
      &#160;&#160;postalCode: '98052',
    </p>
    <p>
      &#160;&#160;streetAddress: &quot;20341 Whitworth Institute 405 N. Whitworth&quot;
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      Meteor.users.update(userId, {
    </p>
    <p>
      &#160;&#160;$set: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;mailingAddress: newMailingAddress
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462379800564" ID="ID_1620302877" MODIFIED="1462382884171" TEXT="adding fields on user registration">
<node COLOR="#111111" CREATED="1462381549933" ID="ID_795745629" MODIFIED="1462382884171" TEXT="Accounts.onCreateUser">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Generate user initials after Facebook login
    </p>
    <p>
      Accounts.onCreateUser((options, user) =&gt; {
    </p>
    <p>
      &#160;&#160;if (! user.services.facebook) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;throw new Error('Expected login with Facebook only.');
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;const { first_name, last_name } = user.services.facebook;
    </p>
    <p>
      &#160;&#160;user.initials = first_name[0].toUpperCase() + last_name[0].toUpperCase();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// Don't forget to return the new user object at the end!
    </p>
    <p>
      &#160;&#160;return user;
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      Note that the user object provided doesn&#8217;t have an _id field yet. If you need to do something with the new user&#8217;s ID inside this function, a useful trick can be to generate the ID yourself:
    </p>
    <p>
      
    </p>
    <p>
      // Generate a todo list for each new user
    </p>
    <p>
      Accounts.onCreateUser((options, user) =&gt; {
    </p>
    <p>
      &#160;&#160;// Generate a user ID ourselves
    </p>
    <p>
      &#160;&#160;user._id = Random.id(); // Need to add the `random` package
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// Use the user ID we generated
    </p>
    <p>
      &#160;&#160;Lists.createListForUser(user._id);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// Don't forget to return the new user object at the end!
    </p>
    <p>
      &#160;&#160;return user;
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462379812643" ID="ID_570501619" MODIFIED="1462624691447" TEXT="don&apos;t use profile">
<node COLOR="#111111" CREATED="1462381982108" ID="ID_70626693" MODIFIED="1462382884171" TEXT="historical mistake"/>
<node COLOR="#111111" CREATED="1462381997861" ID="ID_1403637243" MODIFIED="1463060015866" TEXT="deny all writes from the client">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Deny all client-side updates to user documents
    </p>
    <p>
      Meteor.users.deny({
    </p>
    <p>
      &#160;&#160;update() { return true; }
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="yes"/>
</node>
<node COLOR="#111111" CREATED="1462382444605" ID="ID_1524749078" MODIFIED="1462382884171" TEXT="beware">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Even ignoring the security implications of profile, it isn&#8217;t a good idea to put all of
    </p>
    <p>
      your app&#8217;s custom data onto one field. As discussed in the Collections article,
    </p>
    <p>
      Meteor&#8217;s data transfer protocol doesn&#8217;t do deeply nested diffing of fields, so it&#8217;s
    </p>
    <p>
      a good idea to flatten out your objects into many top-level fields on the document.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462379823930" ID="ID_1211014763" MODIFIED="1462382884171" TEXT="publishing custom data">
<node COLOR="#111111" CREATED="1462382553981" ID="ID_1994264401" MODIFIED="1462382884172" TEXT="filter data sent to UI">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This means it&#8217;s critically important to filter the fields of the user document that
    </p>
    <p>
      you send to any client.
    </p>
    <p>
      
    </p>
    <p>
      &#160;if you just added one custom field, you should just write a publication with that
    </p>
    <p>
      one field.
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#faff00" COLOR="#111111" CREATED="1462382709517" ID="ID_1624467768" MODIFIED="1462382884172" TEXT="fields: { initials: 1 }"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462312952691" ID="ID_1163624769" MODIFIED="1462312958181" TEXT="roles &amp; permissions">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462383102507" ID="ID_1075019351" MODIFIED="1462383131484" TEXT="permission types">
<node COLOR="#111111" CREATED="1462383132701" ID="ID_1619707772" MODIFIED="1462383138316" TEXT="role-based">
<node COLOR="#111111" CREATED="1462383160525" ID="ID_323713529" LINK="https://atmospherejs.com/alanning/roles" MODIFIED="1462384251294" TEXT="alanning:roles">
<icon BUILTIN="password"/>
<node COLOR="#111111" CREATED="1462384251278" ID="ID_903877924" MODIFIED="1462384263510" TEXT="using">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Give Alice the 'admin' role
    </p>
    <p>
      Roles.addUsersToRoles(aliceUserId, 'admin', Roles.GLOBAL_GROUP);
    </p>
    <p>
      
    </p>
    <p>
      // Give Bob the 'moderator' role for a particular category
    </p>
    <p>
      Roles.addUsersToRoles(bobsUserId, 'moderator', categoryId);
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462384253942" ID="ID_1311314719" MODIFIED="1462384268215" TEXT="checking">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const forumPost = Posts.findOne(postId);
    </p>
    <p>
      
    </p>
    <p>
      const canDelete = Roles.userIsInRole(userId,
    </p>
    <p>
      &#160;&#160;['admin', 'moderator'], forumPost.categoryId);
    </p>
    <p>
      
    </p>
    <p>
      if (! canDelete) {
    </p>
    <p>
      &#160;&#160;throw new Meteor.Error('unauthorized',
    </p>
    <p>
      &#160;&#160;&#160;&#160;'Only admins and moderators can delete posts.');
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      Posts.remove(postId);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462383138925" ID="ID_353271463" MODIFIED="1462383146197" TEXT="per-document">
<node COLOR="#111111" CREATED="1462384392340" ID="ID_705708864" MODIFIED="1462384398781" TEXT="giving documents owners"/>
<node COLOR="#111111" CREATED="1462384580446" ID="ID_1306166750" MODIFIED="1462384617314" TEXT="create document helper">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lists.helpers({
    </p>
    <p>
      &#160;&#160;// ...
    </p>
    <p>
      &#160;&#160;editableBy(userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (!this.userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return true;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;return this.userId === userId;
    </p>
    <p>
      &#160;&#160;},
    </p>
    <p>
      &#160;&#160;// ...
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462384600966" ID="ID_1573541340" MODIFIED="1462384619837" TEXT="using ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const list = Lists.findOne(listId);
    </p>
    <p>
      
    </p>
    <p>
      if (! list.editableBy(userId)) {
    </p>
    <p>
      &#160;&#160;throw new Meteor.Error('unauthorized',
    </p>
    <p>
      &#160;&#160;&#160;&#160;'Only list owners can edit private lists.');
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1461874259717" FOLDED="true" ID="ID_728577062" MODIFIED="1463062076052" STYLE="fork" TEXT="testing">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462450641528" ID="ID_948931342" MODIFIED="1462450644639" TEXT="benefits">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462450648201" ID="ID_794935935" MODIFIED="1462450657265" TEXT="ensure applications works the way you think"/>
<node COLOR="#111111" CREATED="1462450661888" ID="ID_739723613" MODIFIED="1462450668940" TEXT="refactor with confidence"/>
<node COLOR="#111111" CREATED="1462450675544" ID="ID_930743734" MODIFIED="1462450684081" TEXT="concrete form of documentation"/>
<node COLOR="#111111" CREATED="1462450697545" ID="ID_784254913" MODIFIED="1462450707474" TEXT="automated testing is critial"/>
</node>
<node COLOR="#990000" CREATED="1462450716153" ID="ID_1215241400" MODIFIED="1462450718330" TEXT="types">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462450724097" ID="ID_287372127" MODIFIED="1463061158309" TEXT="unit">
<arrowlink DESTINATION="ID_833303290" ENDARROW="Default" ENDINCLINATION="917;0;" ID="Arrow_ID_1556458516" STARTARROW="None" STARTINCLINATION="917;0;"/>
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462450766801" ID="ID_303862044" MODIFIED="1462450773071" TEXT="module level test"/>
</node>
<node COLOR="#111111" CREATED="1462450727960" ID="ID_1434130589" MODIFIED="1463061273683" TEXT="integration">
<arrowlink DESTINATION="ID_1761007868" ENDARROW="Default" ENDINCLINATION="1097;0;" ID="Arrow_ID_1532910973" STARTARROW="None" STARTINCLINATION="1097;0;"/>
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462450784889" HGAP="27" ID="ID_1447305610" MODIFIED="1462451803003" TEXT="testing that multiple modules work in concert" VSHIFT="20"/>
</node>
<node COLOR="#111111" CREATED="1462450731113" ID="ID_1576156990" MODIFIED="1463061203031" TEXT="acceptance">
<arrowlink DESTINATION="ID_119130232" ENDARROW="Default" ENDINCLINATION="1074;0;" ID="Arrow_ID_360800859" STARTARROW="None" STARTINCLINATION="1074;0;"/>
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462450807271" ID="ID_940688500" MODIFIED="1462450838928" TEXT="run against any version of app"/>
<node COLOR="#111111" CREATED="1462450839737" ID="ID_1337417191" MODIFIED="1462450871371" TEXT="testing at the browser level"/>
</node>
<node COLOR="#111111" CREATED="1462450737608" ID="ID_876166318" MODIFIED="1463060992858" TEXT="load test">
<icon BUILTIN="full-4"/>
<node COLOR="#111111" CREATED="1462450882809" ID="ID_1116712043" MODIFIED="1462450896412" TEXT="how much load app takes before a crash"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462451678272" ID="ID_462818932" MODIFIED="1462451681402" TEXT="challenges">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462451683121" ID="ID_42252918" MODIFIED="1462451689614" TEXT="client/server data"/>
<node COLOR="#111111" CREATED="1462451700057" ID="ID_247649694" MODIFIED="1463061273683" TEXT="easy in full app test mode">
<arrowlink DESTINATION="ID_1434130589" ENDARROW="Default" ENDINCLINATION="481;0;" ID="Arrow_ID_112760028" STARTARROW="None" STARTINCLINATION="486;-22;"/>
</node>
<node COLOR="#111111" CREATED="1462451842489" ID="ID_830136648" MODIFIED="1462451864828" TEXT="reactivity can alter test data">
<node COLOR="#111111" CREATED="1462451865665" ID="ID_1765203204" MODIFIED="1462451887451" TEXT="remedies possible e.g Tracker.afterFlush()"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462451899569" ID="ID_772799022" MODIFIED="1462451908925" TEXT="`meteor test`">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462451918785" ID="ID_1199020580" MODIFIED="1462451922714" TEXT="special test mode">
<node COLOR="#111111" CREATED="1462451923993" ID="ID_1538189069" MODIFIED="1462452189036" TEXT="doesn&apos;t eagerly load application code">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462451943825" ID="ID_538763911" MODIFIED="1462452190115" TEXT="eagerly loads *.test or *.specs files">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462451987769" ID="ID_997574577" MODIFIED="1462452191107" TEXT="sets Meteor.isTest flag to be true">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462452177297" ID="ID_55585044" MODIFIED="1462452191739" TEXT="starts test driver package">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462452239521" ID="ID_368344438" MODIFIED="1462452254305" TEXT="ignores files in tests/ directory">
<node COLOR="#111111" CREATED="1462452259537" ID="ID_649380907" MODIFIED="1462452265386" TEXT="meant for external test runner"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462453816034" ID="ID_1783281493" MODIFIED="1462453828691" TEXT="`--full-app` test mode">
<node COLOR="#111111" CREATED="1462453831538" ID="ID_1477480149" MODIFIED="1462453838371" TEXT="similar to test mode"/>
<node COLOR="#111111" CREATED="1462453842498" ID="ID_941973086" MODIFIED="1462454046852" TEXT="loads files matching *.app-test[s] &amp; *.app-spec[s]">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462453879778" ID="ID_1406230599" MODIFIED="1462454048028" TEXT="eagerly loads application code ">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462454001050" ID="ID_1432734719" MODIFIED="1462454012108" TEXT="application will run as normal"/>
<node COLOR="#111111" CREATED="1462454014018" ID="ID_1126034705" MODIFIED="1462454032285" TEXT="can write more complext integration tests">
<node COLOR="#111111" CREATED="1462454033122" ID="ID_25333474" MODIFIED="1462454039473" TEXT="plus files for acceptance tests"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462454068410" ID="ID_207608475" MODIFIED="1462454072875" TEXT="driver packages">
<node COLOR="#111111" CREATED="1462454143802" ID="ID_995525832" MODIFIED="1462454156270" TEXT="`meteor test --driver-package`"/>
<node COLOR="#111111" CREATED="1462454159802" ID="ID_113774678" MODIFIED="1462454164054" TEXT="two kinds">
<node COLOR="#111111" CREATED="1462454165354" ID="ID_1300350759" MODIFIED="1462454186260" TEXT="web reporters">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462454177738" ID="ID_1539238332" MODIFIED="1462454187236" TEXT="console reporters">
<icon BUILTIN="full-2"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462454229426" ID="ID_1127021809" MODIFIED="1462454234874" TEXT="recommended">
<node COLOR="#111111" CREATED="1462454193842" ID="ID_1303449700" LINK="https://mochajs.org/" MODIFIED="1462454243840" TEXT="Mocha">
<node COLOR="#111111" CREATED="1462454277194" ID="ID_975628496" LINK="https://atmospherejs.com/practicalmeteor/mocha" MODIFIED="1462454295132" TEXT="practicalmeteor:mocha ">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462454307594" ID="ID_111266385" MODIFIED="1462454315580" TEXT="only runs in test mode"/>
<node COLOR="#111111" CREATED="1462454320162" ID="ID_967389107" MODIFIED="1462454400920" TEXT="executes code on client and server">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Note: Arrow function use with Mocha is discouraged.
    </p>
    <p>
      // (see http://mochajs.org/#arrow-functions)
    </p>
    <p>
      describe('my module', function () {
    </p>
    <p>
      &#160;&#160;it('does something that should be tested', function () {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// This code will be executed by the test driver when the app is started
    </p>
    <p>
      &#160;&#160;&#160;&#160;// in the correct mode
    </p>
    <p>
      &#160;&#160;})
    </p>
    <p>
      })
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462454244682" ID="ID_1125364435" LINK="http://chaijs.com/" MODIFIED="1462454263449" TEXT="Chai asseration library"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462454409970" ID="ID_900921219" MODIFIED="1462454412774" TEXT="test data">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462454445922" ID="ID_1160684526" MODIFIED="1462454460884" TEXT="test mode initialized with a clean test database">
<node COLOR="#111111" CREATED="1462454588562" ID="ID_362671369" MODIFIED="1462454609763" TEXT="you must specify you own test content"/>
<node COLOR="#111111" CREATED="1462454612498" ID="ID_890784479" LINK="https://atmospherejs.com/xolvio/cleaner" MODIFIED="1462454742682" TEXT="xolvio:cleaner">
<node COLOR="#111111" CREATED="1462454747263" ID="ID_704921378" MODIFIED="1462454759926" TEXT="on server">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import { resetDatabase } from 'meteor/xolvio:cleaner';
    </p>
    <p>
      
    </p>
    <p>
      describe('my module', function () {
    </p>
    <p>
      &#160;&#160;beforeEach(function () {
    </p>
    <p>
      &#160;&#160;&#160;&#160;resetDatabase();
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462454761215" ID="ID_141516452" MODIFIED="1462454765853" TEXT="on client">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import { resetDatabase } from 'meteor/xolvio:cleaner';
    </p>
    <p>
      
    </p>
    <p>
      // NOTE: Before writing a method like this you'll want to double check
    </p>
    <p>
      // that this file is only going to be loaded in test mode!!
    </p>
    <p>
      Meteor.methods({
    </p>
    <p>
      &#160;&#160;'test.resetDatabase': () =&gt; resetDatabase();
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      describe('my module', function (done) {
    </p>
    <p>
      &#160;&#160;beforeEach(function (done) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// We need to wait until the method call is done before moving on, so we
    </p>
    <p>
      &#160;&#160;&#160;&#160;// use Mocha's async mechanism (calling a done callback)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Meteor.call('test.resetDatabase', done);
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462454885376" ID="ID_339412676" MODIFIED="1462454889216" TEXT="generating data">
<node COLOR="#111111" CREATED="1462454918311" ID="ID_1717501257" MODIFIED="1462454927906" TEXT="better">
<node COLOR="#111111" CREATED="1462454928903" ID="ID_1630111563" LINK="https://atmospherejs.com/dburles/factory" MODIFIED="1462458237330" TEXT="dburles:factory">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462454970527" ID="ID_1960344240" LINK="https://www.npmjs.com/package/faker" MODIFIED="1462455018493" TEXT="faker package">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import faker from 'faker';
    </p>
    <p>
      
    </p>
    <p>
      Factory.define('todo', Todos, {
    </p>
    <p>
      &#160;&#160;listId: () =&gt; Factory.get('list'),
    </p>
    <p>
      &#160;&#160;text: () =&gt; faker.lorem.sentence(),
    </p>
    <p>
      &#160;&#160;createdAt: () =&gt; new Date(),
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      To use the factory in a test, we simply call Factory.create:
    </p>
    <p>
      
    </p>
    <p>
      // This creates a todo and a list in the database and returns the todo.
    </p>
    <p>
      const todo = Factory.create('todo');
    </p>
    <p>
      
    </p>
    <p>
      // If we have a list already, we can pass in the id and avoid creating another:
    </p>
    <p>
      const list = Factory.create('list');
    </p>
    <p>
      const todoInList = Factory.create('todo', { listId: list._id });
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462455045943" ID="ID_1540478023" MODIFIED="1462455051023" TEXT="mocking the database">
<node COLOR="#111111" CREATED="1462455191423" ID="ID_975601909" MODIFIED="1462455207874" TEXT="problem using faker on client"/>
<node COLOR="#111111" CREATED="1462455234799" ID="ID_351139337" MODIFIED="1462455244657" TEXT="solution">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import { StubCollections } from 'meteor/stub-collections';
    </p>
    <p>
      import { Todos } from 'path/to/todos.js';
    </p>
    <p>
      
    </p>
    <p>
      StubCollections.stub(Todos);
    </p>
    <p>
      
    </p>
    <p>
      // Now Todos is stubbed to a simple local collection mock,
    </p>
    <p>
      //&#160;&#160;&#160;so for instance on the client we can do:
    </p>
    <p>
      Todos.insert({ a: 'document' });
    </p>
    <p>
      
    </p>
    <p>
      // Restore the `Todos` collection
    </p>
    <p>
      StubCollections.restore();
    </p>
    <p>
      
    </p>
    <p>
      //In a Mocha test, it makes sense to use stub-collections in a beforeEach/afterEach block.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462457155432" ID="ID_833303290" MODIFIED="1463061158307" TEXT="unit testing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462457199848" ID="ID_1707160932" MODIFIED="1462457208714" TEXT="testing isolated sections of code"/>
<node COLOR="#111111" CREATED="1462457245520" ID="ID_1041532708" MODIFIED="1462457251938" TEXT="can write fast &amp; accurate tests"/>
<node COLOR="#111111" CREATED="1462457255808" ID="ID_1604273269" MODIFIED="1462457262739" TEXT="incomplete tests can hide bugs"/>
<node COLOR="#111111" CREATED="1462457268336" ID="ID_395441213" MODIFIED="1462457278111" TEXT="combine with integration and acceptance tests"/>
<node COLOR="#111111" CREATED="1462457324888" ID="ID_1395603500" MODIFIED="1462457345032" TEXT="test reusable components"/>
<node COLOR="#111111" CREATED="1462457359032" ID="ID_1985093770" LINK="https://facebook.github.io/react/docs/test-utils.html" MODIFIED="1462457381778" TEXT="React test utils">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462457517712" ID="ID_134726567" MODIFIED="1462457526826" TEXT="note">
<icon BUILTIN="yes"/>
<node COLOR="#111111" CREATED="1462457530864" ID="ID_1680698946" MODIFIED="1462457534389" TEXT="importing"/>
<node COLOR="#111111" CREATED="1462457534896" ID="ID_124102093" MODIFIED="1462457537505" TEXT="stubbing"/>
<node COLOR="#111111" CREATED="1462457540880" ID="ID_740978665" MODIFIED="1462457545010" TEXT="creating data"/>
<node COLOR="#111111" CREATED="1462457565192" ID="ID_1707077983" MODIFIED="1462457566701" TEXT="testing">
<node COLOR="#111111" CREATED="1462457577240" ID="ID_165713076" MODIFIED="1462457686572" TEXT="`meteor test --driver-package practicalmeteor:mocha --port 3100`"/>
<node COLOR="#111111" CREATED="1462457638808" ID="ID_1593689461" LINK="http://localhost:3000/" MODIFIED="1462457695501" TEXT="http://localhost:3100/"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462457726896" ID="ID_1424335829" MODIFIED="1462457734323" TEXT="isolation techniques">
<node COLOR="#111111" CREATED="1462457769696" ID="ID_1588012703" MODIFIED="1462457772187" TEXT="stubbing">
<node COLOR="#111111" CREATED="1462457780752" ID="ID_804253167" LINK="https://atmospherejs.com/velocity/meteor-stubs" MODIFIED="1462457878370" TEXT="velocity:meteor-stubs">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462457801993" ID="ID_1095397279" LINK="http://sinonjs.org/" MODIFIED="1462457811678" TEXT="Sinon"/>
<node COLOR="#111111" CREATED="1462457821623" ID="ID_75761189" LINK="https://atmospherejs.com/hwillson/stub-collections" MODIFIED="1462457873226" TEXT="stub-collections">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462457852592" ID="ID_1584534179" MODIFIED="1462457859961" TEXT="isolate a publication">
<node COLOR="#111111" CREATED="1462457905184" ID="ID_309771837" LINK="https://atmospherejs.com/bayes/publication-collector" MODIFIED="1462457918346" TEXT="bayes:publication-collector">
<icon BUILTIN="password"/>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462457092488" ID="ID_1761007868" MODIFIED="1463061175263" TEXT="integration testing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462457948128" ID="ID_843901987" MODIFIED="1462457954527" TEXT="crosses module boundaries">
<node COLOR="#111111" CREATED="1462458018944" ID="ID_679900921" MODIFIED="1462458047294" TEXT="server only">
<node COLOR="#111111" CREATED="1462458048536" ID="ID_1980334627" MODIFIED="1462458051995" TEXT="test as unit test"/>
</node>
<node COLOR="#111111" CREATED="1462458053552" ID="ID_1568217211" MODIFIED="1462458064303" TEXT="crosses client-server boundary">
<node COLOR="#111111" CREATED="1462458077744" ID="ID_1887499923" MODIFIED="1462458090224" TEXT="via full app testing mode"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462458133632" ID="ID_963624791" MODIFIED="1462458139482" TEXT="better for smart components"/>
</node>
<node COLOR="#990000" CREATED="1462457105993" ID="ID_119130232" MODIFIED="1463061203031" TEXT="acceptance testing">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#990000" CREATED="1462457113312" ID="ID_1910443203" MODIFIED="1462457171674" TEXT="continuous integration">
<font NAME="SansSerif" SIZE="14"/>
<icon BUILTIN="full-4"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1462460093065" ID="ID_295307950" MODIFIED="1462650865857" POSITION="right" TEXT="view">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<icon BUILTIN="full-5"/>
<node COLOR="#00b439" CREATED="1462460113761" FOLDED="true" ID="ID_1396453637" MODIFIED="1463063597191" TEXT="URLs &amp; routing">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462460282505" ID="ID_986278693" MODIFIED="1462460286305" TEXT="client side">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462460338417" ID="ID_1067899414" MODIFIED="1462460341756" TEXT="functions">
<node COLOR="#111111" CREATED="1462460343129" ID="ID_1028518562" MODIFIED="1462460505867" TEXT="bookmarking">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462460356041" ID="ID_1787759885" MODIFIED="1462460507475" TEXT="sharing">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462460359465" ID="ID_522333159" MODIFIED="1462460508779" TEXT="navigation">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462460549249" ID="ID_1441822994" MODIFIED="1462460704061" TEXT="flow router">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462460554897" ID="ID_1717540460" LINK="https://atmospherejs.com/kadira/flow-router" MODIFIED="1462460575529" TEXT="kadira:flow-router"/>
</node>
<node COLOR="#990000" CREATED="1462460705929" ID="ID_62495089" MODIFIED="1462463313767" TEXT="defining">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When the route is matched, the action method executes, and you can perform
    </p>
    <p>
      any actions you need to. The name property of the route is optional, but will let
    </p>
    <p>
      us refer to this route more conveniently later on.
    </p>
    <p>
      
    </p>
    <p>
      FlowRouter.route('/lists/:_id', {
    </p>
    <p>
      &#160;&#160;name: 'Lists.show',
    </p>
    <p>
      &#160;&#160;action(params, queryParams) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;console.log(&quot;Looking at a list?&quot;);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462460715289" ID="ID_1257661764" LINK="http://guide.meteor.com/routing.html#url-pattern-matching" MODIFIED="1462460739489" TEXT="pattern matching">
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462460761625" ID="ID_751446687" MODIFIED="1462460775829" TEXT="&apos;/lists/:_id&apos;"/>
<node COLOR="#111111" CREATED="1462460820984" ID="ID_373142950" MODIFIED="1462460821779" TEXT="params"/>
<node COLOR="#111111" CREATED="1462460826490" ID="ID_1229464177" MODIFIED="1462460827384" TEXT="queryParams"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462460864737" ID="ID_1576128177" MODIFIED="1462463322781" TEXT="accessing route information">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462463424994" ID="ID_1485044093" MODIFIED="1462463438613" TEXT="functions on the global singleton"/>
<node COLOR="#111111" CREATED="1462463474690" ID="ID_525993973" MODIFIED="1462463490978" TEXT="limit access">
<node COLOR="#111111" CREATED="1462463492242" ID="ID_577543042" MODIFIED="1462463509855" TEXT="top of component heirachy"/>
<node COLOR="#111111" CREATED="1462463510314" ID="ID_1182005225" MODIFIED="1462463518815" TEXT="page OR layout"/>
</node>
<node COLOR="#111111" CREATED="1462463532098" ID="ID_1950247927" MODIFIED="1462463701245" TEXT="reactive functions">
<icon BUILTIN="yes"/>
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462463538290" ID="ID_490677029" MODIFIED="1462463627645">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      FlowRouter.getRouteName()
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462463566298" ID="ID_1948547193" MODIFIED="1462463642157" TEXT="FlowRouter.getParam(paramName)"/>
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462463573513" ID="ID_1064818183" MODIFIED="1462463648485" TEXT="FlowRouter.getQueryParam(paramName)"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462463740433" ID="ID_1328017281" MODIFIED="1462463749751" TEXT="highlight active route">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462463759529" ID="ID_1834404361" LINK="https://atmospherejs.com/zimme/active-route" MODIFIED="1462463776493" TEXT="zimme:active-route">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462463916682" ID="ID_1870265441" MODIFIED="1462463921670" TEXT="rendering based on route">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462464398251" ID="ID_1091429656" MODIFIED="1462464404372" TEXT="componenets as pages"/>
<node COLOR="#111111" CREATED="1462464434082" ID="ID_779387072" MODIFIED="1462464462127" TEXT="top-level component collects data for children">
<node COLOR="#111111" CREATED="1462464468627" ID="ID_970648840" MODIFIED="1462464520181" TEXT="collection information">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462464475674" ID="ID_16798082" MODIFIED="1462464521165" TEXT="subscribe to publications">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462464500019" ID="ID_503612018" MODIFIED="1462464521949" TEXT="pass the data into sub-component">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462464563819" ID="ID_1244706342" MODIFIED="1462464643977" TEXT="changing page when logged out">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It&#8217;s best to keep all logic around what to render in the component hierarchy
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1462464646090" ID="ID_1885922312" MODIFIED="1462464651581" TEXT="changing routes">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462464671491" ID="ID_950185856" MODIFIED="1462464678607" TEXT="&lt;a&gt; tag"/>
<node COLOR="#111111" CREATED="1462464682667" ID="ID_1258215325" MODIFIED="1462464690940" TEXT="FlowRouter.pathFor">
<node COLOR="#111111" CREATED="1462464698147" ID="ID_511026418" LINK="https://github.com/arillo/meteor-flow-router-helpers/" MODIFIED="1462464741773" TEXT="arillo:flow-router-helpers">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &lt;a href=&quot;{{pathFor 'Lists.show' _id=list._id}}&quot; title=&quot;{{list.name}}&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;class=&quot;list-todo {{activeListClass list}}&quot;&gt;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462464755457" ID="ID_384372633" MODIFIED="1462464768515" TEXT="routing programmatically">
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462464798339" ID="ID_1065810451" MODIFIED="1462465904526" TEXT="FlowRouter.go()"/>
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462465890051" ID="ID_1629855056" MODIFIED="1462465908942" TEXT="FlowRouter.setParams()"/>
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462465898386" ID="ID_1982897126" MODIFIED="1462465913182" TEXT="FlowRouter.setQueryParams()"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462465934715" ID="ID_845792868" MODIFIED="1462465939548" TEXT="storing data in URL">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462465994859" ID="ID_1791234143" MODIFIED="1462466044646" TEXT="encodeURIComponent(EJSON.stringify(data)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      FlowRouter.setQueryParams({data: encodeURIComponent(EJSON.stringify(data))});
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462466046026" ID="ID_1948952911" MODIFIED="1462466054421" TEXT="EJSON.parse()">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const data = EJSON.parse(FlowRouter.getQueryParam('data'));
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1462466178763" ID="ID_165807003" MODIFIED="1462466182288" TEXT="redirecting">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462466185275" ID="ID_751188162" MODIFIED="1462466190534" TEXT="dynamically">
<node COLOR="#111111" CREATED="1462466789091" ID="ID_761217886" MODIFIED="1462466800691" TEXT="render part of component heirachy"/>
<node COLOR="#111111" CREATED="1462466802595" ID="ID_1354839880" MODIFIED="1462466815652" TEXT="load some data to know where to redirect"/>
<node COLOR="#111111" CREATED="1462466831547" ID="ID_256641039" MODIFIED="1462466834079" TEXT="`App_rootRedirector`">
<node COLOR="#111111" CREATED="1462466923827" ID="ID_1568615198" MODIFIED="1462466949273" TEXT="subscribe to data">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462466935788" ID="ID_940244062" MODIFIED="1462466950118" TEXT="redirect to intended route">
<icon BUILTIN="full-2"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462466191131" ID="ID_1894620374" MODIFIED="1462467048744" TEXT="after user action">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Often, you just want to go to a new route programmatically when a user has
    </p>
    <p>
      completed a certain action. Above we saw a case (creating a new list) when we
    </p>
    <p>
      wanted to do it optimistically&#8212;i.e. before we hear back from the server that the
    </p>
    <p>
      Method succeeded. We can do this because we reasonably expect that the Method
    </p>
    <p>
      will succeed in almost all cases (see the UI/UX article for further discussion of this).
    </p>
    <p>
      
    </p>
    <p>
      However, if we wanted to wait for the method to return from the server, we can
    </p>
    <p>
      put the redirection in the callback of the method:
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1462467307524" ID="ID_1898229626" MODIFIED="1462467311424" TEXT="advanved routing">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462467313892" ID="ID_1022929892" MODIFIED="1462467317717" TEXT="missing pages">
<node COLOR="#111111" CREATED="1462467385828" ID="ID_191995769" MODIFIED="1462467391050" TEXT="no such route">
<node BACKGROUND_COLOR="#fffd00" COLOR="#111111" CREATED="1462467341132" ID="ID_762333424" MODIFIED="1462467348806" TEXT="FlowRouter.notFound()"/>
</node>
<node COLOR="#111111" CREATED="1462467403556" ID="ID_706031533" MODIFIED="1462467414766" TEXT="route valid but no data">
<node COLOR="#111111" CREATED="1462467448244" ID="ID_763036464" MODIFIED="1462467455470" TEXT="render not found template"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462467318132" ID="ID_1559451714" MODIFIED="1462467322975" TEXT="analytics"/>
<node COLOR="#111111" CREATED="1462467323467" ID="ID_61612471" MODIFIED="1462467327244" TEXT="SSR">
<node COLOR="#111111" CREATED="1462467530236" ID="ID_1350982454" MODIFIED="1462467535062" TEXT="API access">
<node COLOR="#111111" CREATED="1462467536012" ID="ID_1840490742" LINK="http://atmospherejs.com/simple/rest" MODIFIED="1462467551854" TEXT="simple:rest">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462467558556" ID="ID_1148653802" LINK="https://atmospherejs.com/nimble/restivus" MODIFIED="1462467572366" TEXT="nimble:restivus">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462467581308" ID="ID_1294796811" MODIFIED="1462467585389" TEXT="server rendering">
<node COLOR="#111111" CREATED="1462467599067" ID="ID_1199949808" MODIFIED="1462467605054" TEXT="only in React rendering"/>
</node>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1462460134561" FOLDED="true" ID="ID_1748676970" MODIFIED="1462812171899" TEXT="user interfaces">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462480027598" ID="ID_356252390" MODIFIED="1462480048282" TEXT="UI components">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462480103134" ID="ID_1706429672" MODIFIED="1462480107423" TEXT="patterns">
<node COLOR="#111111" CREATED="1462480108238" ID="ID_845809115" MODIFIED="1462480112376" TEXT="benefits">
<node COLOR="#111111" CREATED="1462480115535" ID="ID_1377410075" MODIFIED="1462480124871" TEXT="easier to understand"/>
<node COLOR="#111111" CREATED="1462480125190" ID="ID_1702603777" MODIFIED="1462480129368" TEXT="easier to test"/>
<node COLOR="#111111" CREATED="1462480130230" ID="ID_1667766742" MODIFIED="1462480135133" TEXT="easier to maintain"/>
</node>
<node COLOR="#111111" CREATED="1462480154006" ID="ID_425216817" MODIFIED="1462480167413" TEXT="made with clear interfaces"/>
</node>
<node COLOR="#111111" CREATED="1462480200646" ID="ID_764629818" MODIFIED="1462480211646" TEXT="resusable components">
<node COLOR="#111111" CREATED="1462480233910" ID="ID_919313996" MODIFIED="1462480243681" TEXT="render purley based on direct inputs"/>
<node COLOR="#111111" CREATED="1462480270311" ID="ID_634991906" MODIFIED="1462480276718" TEXT="benefits">
<node COLOR="#111111" CREATED="1462480277758" ID="ID_1988005986" MODIFIED="1462480824685" TEXT="easy to reason about">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462480284030" ID="ID_784369250" MODIFIED="1462480826429" TEXT="easy to test">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462480811567" ID="ID_1673624528" MODIFIED="1462628098166" TEXT="easy to add to component style  guides">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462480834759" ID="ID_1762586298" MODIFIED="1462480850533" TEXT="dependencies are knowable">
<icon BUILTIN="full-4"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462480875023" ID="ID_957617987" MODIFIED="1462480885656" TEXT="`pure` componenets">
<node COLOR="#111111" CREATED="1462480887223" ID="ID_591009100" MODIFIED="1462480893639" TEXT="no internal state"/>
<node COLOR="#111111" CREATED="1462480902183" ID="ID_567567902" MODIFIED="1462480909823" TEXT="prefered over reusable"/>
</node>
<node COLOR="#111111" CREATED="1462482596591" ID="ID_546604036" MODIFIED="1462628157802" TEXT="avoid using">
<node COLOR="#111111" CREATED="1462482601575" ID="ID_1122402317" MODIFIED="1462482610432" TEXT="collecions"/>
<node COLOR="#111111" CREATED="1462482611335" ID="ID_1666600356" MODIFIED="1462482616485" TEXT="accounts information"/>
<node COLOR="#111111" CREATED="1462482617191" ID="ID_1802259278" MODIFIED="1462482621856" TEXT="current route information"/>
<node COLOR="#111111" CREATED="1462482625927" ID="ID_1448663178" MODIFIED="1462482634440" TEXT="any other client-side data stores"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462480217406" ID="ID_934528343" MODIFIED="1462480223118" TEXT="smart componenets">
<node COLOR="#111111" CREATED="1462482667335" ID="ID_380365751" MODIFIED="1462482954676" TEXT="subscribe to data">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462482687570" ID="ID_1024367845" MODIFIED="1462482956397" TEXT="fetch data form subscriptions">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462482700719" ID="ID_1719095844" MODIFIED="1462482957653" TEXT="fetch global client-side state from stores such as">
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462482727144" ID="ID_1745117067" MODIFIED="1462482747245" TEXT="routers"/>
<node COLOR="#111111" CREATED="1462482731343" ID="ID_729721018" MODIFIED="1462482743328" TEXT="accounts"/>
<node COLOR="#111111" CREATED="1462482734815" ID="ID_1083478314" MODIFIED="1462482740177" TEXT="own stores"/>
</node>
<node COLOR="#111111" CREATED="1462482773671" ID="ID_348594785" MODIFIED="1462482789821" TEXT="usually ony render 1+ resuable children"/>
<node COLOR="#111111" CREATED="1462482816311" ID="ID_587680060" MODIFIED="1462482827717" TEXT="e.g page componenet called from router"/>
</node>
<node COLOR="#111111" CREATED="1462482866792" ID="ID_429841163" MODIFIED="1462482872286" TEXT="visually testing">
<node COLOR="#111111" CREATED="1462482894583" ID="ID_1279507648" MODIFIED="1462482908897" TEXT="reusables can be rendered anywhere"/>
<node COLOR="#111111" CREATED="1462482925536" ID="ID_733266568" MODIFIED="1462483053497" TEXT="component explorer">
<node COLOR="#111111" CREATED="1462482972543" ID="ID_68289707" MODIFIED="1462482984442" TEXT="indexes app components"/>
<node COLOR="#111111" CREATED="1462482988119" ID="ID_1557792837" MODIFIED="1462483007241" TEXT="renders them with your states and stubbed data"/>
<node COLOR="#111111" CREATED="1462483061263" ID="ID_1946854271" LINK="https://youtu.be/SRXvg-_Suo0" MODIFIED="1462483071845" TEXT="chromatic">
<node COLOR="#111111" CREATED="1462483105072" ID="ID_654394713" LINK="https://atmospherejs.com/mdg/chromatic" MODIFIED="1462483216934" TEXT="mdg:chromatic">
<icon BUILTIN="password"/>
</node>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462483150912" ID="ID_1827323260" MODIFIED="1462483153861" TEXT="UI patterns">
<node COLOR="#111111" CREATED="1462483176735" ID="ID_653201866" MODIFIED="1462483182133" TEXT="internationaliation">
<node COLOR="#111111" CREATED="1462483186815" ID="ID_1788613061" LINK="https://atmospherejs.com/tap/i18n" MODIFIED="1462484171982" TEXT="tap:i18n">
<icon BUILTIN="password"/>
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462484178296" ID="ID_461156035" MODIFIED="1462484186165" TEXT="ass translation JSON file"/>
<node COLOR="#111111" CREATED="1462484193696" ID="ID_357624346" MODIFIED="1462484211245" TEXT="import using TAPi18n.__()"/>
</node>
<node COLOR="#111111" CREATED="1462483249760" ID="ID_1983292264" MODIFIED="1462483256923" TEXT="places to translate">
<node COLOR="#111111" CREATED="1462483258488" ID="ID_1027290289" MODIFIED="1462483301126" TEXT="HTML templates">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462483265296" ID="ID_1288998205" MODIFIED="1462483302374" TEXT="client JS messages">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462483275175" ID="ID_1619751802" MODIFIED="1462483303566" TEXT="server JS messages &amp; emails">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462483287399" ID="ID_1133301675" MODIFIED="1462483304918" TEXT="data in db">
<icon BUILTIN="full-4"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462487028410" ID="ID_1906964108" MODIFIED="1463064787317" TEXT="event handling">
<arrowlink DESTINATION="ID_990004730" ENDARROW="Default" ENDINCLINATION="953;0;" ID="Arrow_ID_651778445" STARTARROW="None" STARTINCLINATION="953;0;"/>
<node COLOR="#111111" CREATED="1462487102506" FOLDED="true" ID="ID_742753747" MODIFIED="1462661506567" TEXT="slowing rate of db writes">
<node COLOR="#111111" CREATED="1462487171825" ID="ID_1440645655" LINK="http://underscorejs.org/#throttle" MODIFIED="1462487337755" TEXT=".throttle()"/>
<node COLOR="#111111" CREATED="1462487181569" ID="ID_1599366161" LINK="http://underscorejs.org/#debounce" MODIFIED="1462487348234" TEXT=".debounce()"/>
</node>
<node COLOR="#111111" CREATED="1462487271097" ID="ID_1930776636" MODIFIED="1462487348234" TEXT="limiting re-rendering">
<arrowlink DESTINATION="ID_1440645655" ENDARROW="Default" ENDINCLINATION="142;0;" ID="Arrow_ID_540591469" STARTARROW="None" STARTINCLINATION="142;0;"/>
<arrowlink DESTINATION="ID_1599366161" ENDARROW="Default" ENDINCLINATION="153;0;" ID="Arrow_ID_344381461" STARTARROW="None" STARTINCLINATION="153;0;"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462487366913" ID="ID_1103118852" MODIFIED="1462487372303" TEXT="UX patterns">
<node COLOR="#111111" CREATED="1462487375409" ID="ID_1951114236" MODIFIED="1462487381551" TEXT="subscription readiness">
<node COLOR="#111111" CREATED="1462558776774" ID="ID_329064250" MODIFIED="1462558786044" TEXT="waiting for the data to arrive"/>
<node COLOR="#111111" CREATED="1462558807843" ID="ID_1281993365" MODIFIED="1462558820019" TEXT="switch out page with a `loading page`"/>
<node COLOR="#111111" CREATED="1462558851963" ID="ID_290174167" MODIFIED="1462558867309" TEXT="per-component loading state">
<node COLOR="#111111" CREATED="1462563867773" ID="ID_233480266" MODIFIED="1462563876139" TEXT="show as much page as possible"/>
<node COLOR="#111111" CREATED="1462563885957" ID="ID_632599140" MODIFIED="1462563902636" TEXT="loading state only per component"/>
</node>
<node COLOR="#111111" CREATED="1462564005373" ID="ID_1986089979" MODIFIED="1462564010580" TEXT="showing placeholders">
<node COLOR="#111111" CREATED="1462564021197" ID="ID_942938185" MODIFIED="1462564040337" TEXT="dimensions = final element dimensions"/>
</node>
<node COLOR="#111111" CREATED="1462564079525" ID="ID_1831920996" MODIFIED="1462564091143" TEXT="use style guide to prototype loading state"/>
</node>
<node COLOR="#111111" CREATED="1462487383337" ID="ID_1948273960" MODIFIED="1462487385799" TEXT="pagination">
<node COLOR="#111111" CREATED="1462567113646" ID="ID_447894138" MODIFIED="1462570037245" TEXT="displaying new data">
<node COLOR="#111111" CREATED="1462567123374" ID="ID_1207130940" MODIFIED="1462567126438" TEXT="animate changes">
<node COLOR="#111111" CREATED="1462567257758" ID="ID_1128339833" MODIFIED="1462567291825" TEXT="calling out changes without updating"/>
<node COLOR="#111111" CREATED="1462567345318" ID="ID_1835259239" MODIFIED="1462567396769" TEXT="done in smart component">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462567360358" ID="ID_1369062025" MODIFIED="1462567398200" TEXT="use local collection to store rendered data">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462567377110" ID="ID_695832464" MODIFIED="1462570073118" TEXT="then push data (smart -&gt; reusable) when user requests">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462487387217" ID="ID_1661836319" MODIFIED="1462487392406" TEXT="optimistic UI">
<node COLOR="#111111" CREATED="1462570148327" ID="ID_1083350150" MODIFIED="1462570201362" TEXT="UI reflects changes assuming db write will succeed">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      So when should you wait for the server and when not? It basically comes down
    </p>
    <p>
      to how optimistic you are; how likely it is that something will go wrong. In the
    </p>
    <p>
      case of a password, you really can&#8217;t tell on the client, so you need to be
    </p>
    <p>
      conservative. In other cases, you can be pretty confident that the Method call
    </p>
    <p>
      will succeed, and so you can move on.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462573389096" ID="ID_635008888" MODIFIED="1462573430783" TEXT="new inserts simulated in minimongo whilst inserting on server">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import { insert } from '../../api/lists/methods.js';
    </p>
    <p>
      
    </p>
    <p>
      Template.App_body.events({
    </p>
    <p>
      &#160;&#160;'click .js-new-list'() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;const listId = insert.call((err) =&gt; {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;if (err) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// At this point, we have already redirected to the new list page, but
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// for some reason the list didn't get created. This should almost never
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// happen, but it's good to handle it anyway.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;FlowRouter.go('App.home');
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;alert('Could not create list.');
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;FlowRouter.go('Lists.show', { _id: listId });
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462487395161" ID="ID_177668794" MODIFIED="1462573444817" TEXT="indicating writes">
<node COLOR="#111111" CREATED="1462573877534" ID="ID_700869892" MODIFIED="1462573921496" TEXT="modify on client to indicate `pending`">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Messages.methods.insert = new ValidatedMethod({
    </p>
    <p>
      &#160;&#160;name: 'Messages.methods.insert',
    </p>
    <p>
      &#160;&#160;validate: new SimpleSchema({
    </p>
    <p>
      &#160;&#160;&#160;&#160;text: {type: String}
    </p>
    <p>
      &#160;&#160;}).validator(),
    </p>
    <p>
      &#160;&#160;run(message) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// In the simulation (on the client), we add an extra pending field.
    </p>
    <p>
      &#160;&#160;&#160;&#160;// It will be removed when the server comes back with the &quot;true&quot; data.
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (this.isSimulation) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;message.pending = true;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;Messages.insert(message);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      })
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462487404537" ID="ID_1081915462" MODIFIED="1462487411755" TEXT="unexpected failures">
<node COLOR="#111111" CREATED="1462575119841" ID="ID_889577794" MODIFIED="1462575135814" TEXT="good to notify users e.g flash message"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462575146402" ID="ID_1733631576" MODIFIED="1462575149376" TEXT="animation">
<node COLOR="#111111" CREATED="1462575184844" ID="ID_1818741628" MODIFIED="1462575202787" TEXT="animating UI changes smoothly"/>
<node COLOR="#111111" CREATED="1462575261328" ID="ID_210390408" MODIFIED="1462575272905" TEXT="eases understand of UI changes"/>
<node COLOR="#111111" CREATED="1462575313961" ID="ID_527359676" MODIFIED="1462575351186" TEXT="animating attribute changes"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1462460126161" FOLDED="true" ID="ID_507744727" MODIFIED="1463073913525" TEXT="react">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import React from 'react';
    </p>
    <p>
      
    </p>
    <p>
      export default class HelloWorld extends React.Component {
    </p>
    <p>
      &#160;&#160;render() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return (
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&lt;h1&gt;Hello World&lt;/h1&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      ///////////////////////////
    </p>
    <p>
      
    </p>
    <p>
      import { Meteor } from 'meteor/meteor';
    </p>
    <p>
      import { render } from 'react-dom';
    </p>
    <p>
      import HelloWorld from './HelloWorld.js';
    </p>
    <p>
      
    </p>
    <p>
      Meteor.startup(() =&gt; {
    </p>
    <p>
      &#160;&#160;render(&lt;HelloWorld/&gt;, document.getElementById('app'));
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462628511777" ID="ID_1374391463" MODIFIED="1462628514616" TEXT="learn">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462628516553" ID="ID_1630901815" LINK="https://facebook.github.io/react/docs/getting-started.html" MODIFIED="1462628547598" STYLE="fork" TEXT="react documentation"/>
<node COLOR="#111111" CREATED="1462628531041" ID="ID_1523114444" LINK="https://facebook.github.io/react/docs/thinking-in-react.html" MODIFIED="1462628556111" TEXT="thinking in react"/>
<node COLOR="#111111" CREATED="1462628568057" ID="ID_494849656" LINK="https://www.meteor.com/tutorials/react/creating-an-app" MODIFIED="1462628583547" TEXT="meteor react tutorial"/>
<node COLOR="#111111" CREATED="1462628594769" ID="ID_127065247" LINK="https://github.com/meteor/todos/tree/react" MODIFIED="1462628602802" TEXT="todos example react branch"/>
</node>
<node COLOR="#990000" CREATED="1462628745649" ID="ID_1892599244" MODIFIED="1462628753183" TEXT="installing">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462628631097" ID="ID_267424148" MODIFIED="1462629019755" TEXT="npm install --save react react-dom">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1462628760321" ID="ID_1357585865" LINK="http://react-components.com/" MODIFIED="1462628784746" TEXT="react componenets site"/>
<node COLOR="#111111" CREATED="1462628971904" ID="ID_1380006930" LINK="http://npmjs.com/" MODIFIED="1462628989538" TEXT="npm"/>
<node COLOR="#111111" CREATED="1462629009791" ID="ID_1413923392" MODIFIED="1462629022891" TEXT="npm install --save griddle-react">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462629074745" ID="ID_436240331" MODIFIED="1462629080509" TEXT="react components in blaze">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1462629083545" ID="ID_764141592" MODIFIED="1462629088473" TEXT="blaze templates in react">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1462629783873" ID="ID_929986142" MODIFIED="1462629788442" TEXT="meteors data system">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462638269627" ID="ID_799416090" LINK="https://atmospherejs.com/meteor/react-meteor-data" MODIFIED="1463063692025" TEXT="react-meteor-data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows React components to respond to data changes via Meteor&#8217;s Tracker
    </p>
    <p>
      reactivity system.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
<node COLOR="#111111" CREATED="1462638304306" ID="ID_435852514" MODIFIED="1462638306187" TEXT="meteor add react-meteor-data">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1462638323940" ID="ID_1526343862" MODIFIED="1463063690981" TEXT="createContainer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows you to create a container component which provides data to your
    </p>
    <p>
      presentational components.
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462641331453" ID="ID_1465867843" MODIFIED="1462641347466" TEXT="parameters passedin via router / props">
<node COLOR="#111111" CREATED="1462641400237" ID="ID_1085316224" MODIFIED="1462641415670" TEXT="then passed to presentational componenets"/>
<node COLOR="#111111" CREATED="1462641427892" ID="ID_1467444072" MODIFIED="1462641459494" TEXT="control re-renders">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1462641462285" ID="ID_1176664320" MODIFIED="1462641465493" TEXT="shouldComponentUpdate ">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462629103649" ID="ID_1717952375" MODIFIED="1462629108265" TEXT="routing">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462629120847" ID="ID_1606356742" LINK="https://atmospherejs.com/kadira/flow-router" MODIFIED="1462629145563" TEXT="kadira:flow-router">
<node COLOR="#111111" CREATED="1462629189289" ID="ID_1873977393" MODIFIED="1462641329693" TEXT="mounting compenets with a layout">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import React from 'react';
    </p>
    <p>
      import { FlowRouter } from 'meteor/kadira:flow-router';
    </p>
    <p>
      import { mount } from 'react-mounter';
    </p>
    <p>
      
    </p>
    <p>
      import AppContainer from '../../ui/containers/AppContainer.js';
    </p>
    <p>
      import ListContainer from '../../ui/containers/ListContainer.js';
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      FlowRouter.route('/lists/:_id', {
    </p>
    <p>
      &#160;&#160;name: 'Lists.show',
    </p>
    <p>
      &#160;&#160;action() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;mount(AppContainer, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;main: &lt;ListContainer/&gt;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;});
    </p>
    <p>
      &#160;&#160;},
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      ///////////////////////////////////
    </p>
    <p>
      
    </p>
    <p>
      React-mounter automatically mounts the layout component on a #react-root node,
    </p>
    <p>
      which you can change by using the withOptions() function.
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462629304817" ID="ID_1537131817" LINK="https://www.npmjs.com/package/react-mounter" MODIFIED="1462629314185" TEXT="react-mounter"/>
<node COLOR="#111111" CREATED="1462629320783" ID="ID_1751857419" MODIFIED="1462629323697" TEXT="npm install --save react-mounter">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462629129649" ID="ID_1179896827" LINK="https://www.npmjs.com/package/react-router" MODIFIED="1462629153559" TEXT="react-router"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1462650874497" FOLDED="true" ID="ID_1558632357" MODIFIED="1463135939836" POSITION="right" TEXT="production">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<icon BUILTIN="full-6"/>
<node COLOR="#00b439" CREATED="1462650886666" FOLDED="true" ID="ID_1105824598" MODIFIED="1463065388612" TEXT="security">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462651071481" ID="ID_54355874" MODIFIED="1462651100919" TEXT="concepts">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462651102705" ID="ID_699143218" MODIFIED="1462651149683" TEXT="server code can be trusted">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462651114561" ID="ID_799363339" MODIFIED="1462651151531" TEXT="everything else can&apos;t be trusted">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462651155417" ID="ID_1959716889" MODIFIED="1462651186115" TEXT="validate &amp; check all inputs that come from the client">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462651172273" ID="ID_354055415" MODIFIED="1462651187867" TEXT="don&apos;t leak any secret information to the client">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462651203500" ID="ID_184716629" MODIFIED="1462651209769" TEXT="attack surface">
<node COLOR="#111111" CREATED="1462651214105" ID="ID_1330600607" MODIFIED="1462659909422" TEXT="methods">
<arrowlink DESTINATION="ID_1150351362" ENDARROW="Default" ENDINCLINATION="310;0;" ID="Arrow_ID_289289125" STARTARROW="None" STARTINCLINATION="310;0;"/>
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462651265209" ID="ID_509676835" MODIFIED="1462651287707" TEXT="validate data in method arguments"/>
<node COLOR="#111111" CREATED="1462651291345" ID="ID_583814032" MODIFIED="1462651309393" TEXT="methods returns only what user is allowed to see"/>
</node>
<node COLOR="#111111" CREATED="1462651217625" ID="ID_1050825735" MODIFIED="1462659879998" TEXT="publications">
<arrowlink DESTINATION="ID_1062278932" ENDARROW="Default" ENDINCLINATION="350;0;" ID="Arrow_ID_1104933845" STARTARROW="None" STARTINCLINATION="350;0;"/>
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462651335121" ID="ID_131285986" MODIFIED="1462651379257" TEXT="validate data coming in through publication arguments"/>
<node COLOR="#111111" CREATED="1462651385433" ID="ID_262744434" MODIFIED="1463064749693" TEXT="publications returns only what user is allowed to see"/>
</node>
<node COLOR="#111111" CREATED="1462651222617" ID="ID_1203409541" MODIFIED="1462659886138" TEXT="served files">
<arrowlink DESTINATION="ID_1015288729" ENDARROW="Default" ENDINCLINATION="341;0;" ID="Arrow_ID_1108389534" STARTARROW="None" STARTINCLINATION="341;0;"/>
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462651411041" ID="ID_1572169370" MODIFIED="1463064760467" TEXT="no source nor configuration files served to client have secret data"/>
</node>
<node COLOR="#111111" CREATED="1462651495673" ID="ID_1103791883" MODIFIED="1462657827222" TEXT="avoid allow/deny">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Here&#8217;s a code snippet to add to your server code which disables client-side
    </p>
    <p>
      updates on a collection. This will make sure no other part of your app can
    </p>
    <p>
      use allow:
    </p>
    <p>
      
    </p>
    <p>
      // Deny all client-side updates on the Lists collection
    </p>
    <p>
      Lists.deny({
    </p>
    <p>
      &#160;&#160;insert() { return true; },
    </p>
    <p>
      &#160;&#160;update() { return true; },
    </p>
    <p>
      &#160;&#160;remove() { return true; },
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462657862538" ID="ID_1150351362" MODIFIED="1462661396383" TEXT="methods">
<arrowlink DESTINATION="ID_586654330" ENDARROW="Default" ENDINCLINATION="747;0;" ID="Arrow_ID_1869259519" STARTARROW="None" STARTINCLINATION="715;0;"/>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462657891269" ID="ID_606036845" MODIFIED="1462657897395" TEXT="validate all arguments">
<node COLOR="#111111" CREATED="1462658137660" ID="ID_1797272432" LINK="https://atmospherejs.com/mdg/validated-method" MODIFIED="1462658178126" TEXT="mdg:validated-method">
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462658212131" ID="ID_1347270994" MODIFIED="1462658239082" TEXT="don&apos;t pass userId from client">
<node COLOR="#111111" CREATED="1462658240716" ID="ID_440224126" MODIFIED="1462658288575" TEXT="use this.userId inside method"/>
<node COLOR="#111111" CREATED="1462658351115" ID="ID_1654142734" MODIFIED="1462658353539" TEXT="except">
<node COLOR="#111111" CREATED="1462658355611" ID="ID_1618355657" MODIFIED="1462658415102" TEXT="method only used admin">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462658388219" ID="ID_732151790" MODIFIED="1462658416974" TEXT="method that doesn&apos;t modify user, but uses it as target">
<icon BUILTIN="full-2"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462658423323" ID="ID_1986556791" MODIFIED="1462658430826" TEXT="one method per action">
<node COLOR="#111111" CREATED="1462658636764" ID="ID_185964635" MODIFIED="1462658641900" TEXT="do one thing"/>
<node COLOR="#111111" CREATED="1462658642771" ID="ID_371358610" MODIFIED="1462658649452" TEXT="specific action"/>
</node>
<node COLOR="#111111" CREATED="1462659769644" ID="ID_66316031" MODIFIED="1462659792734" TEXT="refactoring security rules">
<node COLOR="#111111" CREATED="1462659800828" ID="ID_839970663" MODIFIED="1462659818841" TEXT="many methods having same security checks"/>
<node COLOR="#111111" CREATED="1462659823485" ID="ID_175574397" MODIFIED="1462659831548" TEXT="factor out into a seperate module"/>
</node>
<node COLOR="#111111" CREATED="1462659936276" ID="ID_990004730" MODIFIED="1463064787318" TEXT="rate limiting">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // Get list of all method names on Lists
    </p>
    <p>
      const LISTS_METHODS = _.pluck([
    </p>
    <p>
      &#160;&#160;insert,
    </p>
    <p>
      &#160;&#160;makePublic,
    </p>
    <p>
      &#160;&#160;makePrivate,
    </p>
    <p>
      &#160;&#160;updateName,
    </p>
    <p>
      &#160;&#160;remove,
    </p>
    <p>
      ], 'name');
    </p>
    <p>
      
    </p>
    <p>
      // Only allow 5 list operations per connection per second
    </p>
    <p>
      DDPRateLimiter.addRule({
    </p>
    <p>
      &#160;&#160;name(name) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return _.contains(LISTS_METHODS, name);
    </p>
    <p>
      &#160;&#160;},
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;// Rate limit per connection ID
    </p>
    <p>
      &#160;&#160;connectionId() { return true; }
    </p>
    <p>
      }, 5, 1000);
    </p>
    <p>
      
    </p>
    <p>
      This will make every Method only callable 5 times per second per connection.
    </p>
    <p>
      This is a rate limit that shouldn&#8217;t be noticeable by the user at all, but will prevent
    </p>
    <p>
      a malicious script from totally flooding the server with requests. You will need to
    </p>
    <p>
      tune the limit parameters to match your app&#8217;s needs.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#990000" CREATED="1462659860637" ID="ID_1062278932" MODIFIED="1462659879997" TEXT="publications">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462812601030" ID="ID_1962517025" MODIFIED="1462812609918" TEXT="main issue is filtering the data sent"/>
<node COLOR="#111111" CREATED="1462812616789" ID="ID_1811872526" MODIFIED="1462812780556" TEXT="with methods make sure users can&apos;t modify the db"/>
<node COLOR="#111111" CREATED="1462814694319" ID="ID_1699300132" MODIFIED="1462814705507" TEXT="rules same as with methods">
<node COLOR="#111111" CREATED="1462814706813" ID="ID_1703157593" MODIFIED="1462814791728" TEXT="validate all args using `check` &amp; simple-schema">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462814730950" ID="ID_1576981388" MODIFIED="1462814792487" TEXT="never pass current userId as an argument">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462814748846" ID="ID_233069785" MODIFIED="1462814793511" TEXT="dont take generic arguments">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462814760542" ID="ID_650932124" MODIFIED="1462814794607" TEXT="use rate limiting to stop spamming with subscriptions">
<icon BUILTIN="full-4"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462814805998" ID="ID_462668116" MODIFIED="1462814817001" TEXT="always restrict fields">
<node COLOR="#111111" CREATED="1462814861902" ID="ID_1457603915" MODIFIED="1462814956184" TEXT="use `fields` option from Mongo in pubications">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // #1: Bad! If we add a secret field to Lists later, the client
    </p>
    <p>
      // will see it
    </p>
    <p>
      Meteor.publish('lists.public', function () {
    </p>
    <p>
      &#160;&#160;return Lists.find({userId: {$exists: false}});
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      // #2: Good, if we add a secret field to Lists later, the client
    </p>
    <p>
      // will only publish it if we add it to the list of fields
    </p>
    <p>
      Meteor.publish('lists.public', function () {
    </p>
    <p>
      &#160;&#160;return Lists.find({userId: {$exists: false}}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;fields: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;name: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;incompleteCount: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;userId: 1
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      If you find yourself repeating the fields often, it makes sense to factor out a
    </p>
    <p>
      dictionary of public fields that you can always filter by, like so:
    </p>
    <p>
      
    </p>
    <p>
      // In the file where Lists is defined
    </p>
    <p>
      Lists.publicFields = {
    </p>
    <p>
      &#160;&#160;name: 1,
    </p>
    <p>
      &#160;&#160;incompleteCount: 1,
    </p>
    <p>
      &#160;&#160;userId: 1
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1462814822918" ID="ID_1128361620" MODIFIED="1462814829677" TEXT="publications &amp; userId">
<node COLOR="#111111" CREATED="1462815584718" ID="ID_349244493" MODIFIED="1462815590288" TEXT="publications not reactive"/>
<node COLOR="#111111" CREATED="1462815693190" ID="ID_1336905112" MODIFIED="1462815700870" TEXT="can end up sending data to wrong users"/>
<node COLOR="#111111" CREATED="1462815701460" ID="ID_1541672278" MODIFIED="1463065102111" TEXT="user the userId in the returned query cursor">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // #1: Bad! If the owner of the list changes, the old owner will still see it
    </p>
    <p>
      
    </p>
    <p>
      Meteor.publish('list', function (listId) {
    </p>
    <p>
      &#160;&#160;check(listId, String);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;const list = Lists.findOne(listId);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;if (! list.userId === this.userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;throw new Meteor.Error('list.unauthorized',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;'This list doesn\'t belong to you.');
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;return Lists.find(listId, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;fields: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;name: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;incompleteCount: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;userId: 1
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      // #2: Good! When the owner of the list changes, the old owner won't see it
    </p>
    <p>
      anymore
    </p>
    <p>
      
    </p>
    <p>
      Meteor.publish('list', function (listId) {
    </p>
    <p>
      &#160;&#160;check(listId, String);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;return Lists.find({
    </p>
    <p>
      &#160;&#160;&#160;&#160;_id: listId,
    </p>
    <p>
      &#160;&#160;&#160;&#160;userId: this.userId
    </p>
    <p>
      &#160;&#160;}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;fields: {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;name: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;incompleteCount: 1,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;userId: 1
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;});
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462825975690" ID="ID_1779574603" LINK="https://atmospherejs.com/reywood/publish-composite" MODIFIED="1462826077759" TEXT="reywood:publish-composite">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      or more tips on how to use reywood:publish-composite to handle reactive
    </p>
    <p>
      changes in publications, see the data loading article.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="password"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462814831134" ID="ID_103477061" MODIFIED="1462826499411" TEXT="passing options (pagination example)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In summary, you should make sure that any options passed from the client to
    </p>
    <p>
      a publication can only restrict the data being requested, rather than extending it.
    </p>
  </body>
</html></richcontent>
<node COLOR="#111111" CREATED="1462826092488" ID="ID_1615672856" MODIFIED="1462826121420" TEXT="passing a limit">
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462826229538" ID="ID_1858732592" MODIFIED="1462826243847" TEXT="when sending a `limit` option"/>
<node COLOR="#111111" CREATED="1462826244586" ID="ID_1159821058" MODIFIED="1462826258744" TEXT="set a MAX_LIMIT in the server code"/>
</node>
<node COLOR="#111111" CREATED="1462826101777" ID="ID_61304514" MODIFIED="1462826122564" TEXT="passing in a filter">
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462826294450" ID="ID_1505911979" MODIFIED="1462826309642" TEXT="if passing a filter"/>
<node COLOR="#111111" CREATED="1462826311154" ID="ID_334699231" MODIFIED="1462826346296" TEXT="use mogodb `$and` to intersect with data client is allowed to see"/>
<node COLOR="#111111" CREATED="1462826356754" ID="ID_284146756" MODIFIED="1462826384924" TEXT="whitlist the keys that client can use to filter so they dont filter for secret data"/>
</node>
<node COLOR="#111111" CREATED="1462826107898" ID="ID_1149612235" MODIFIED="1462826123316" TEXT="passing in fields">
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462826452314" ID="ID_1214965945" MODIFIED="1462826465466" TEXT="client can decide which field they can see"/>
<node COLOR="#111111" CREATED="1462826467458" ID="ID_1611169445" MODIFIED="1463065226840" TEXT="on server insersect with fields client is allowed to see"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462659867077" ID="ID_1015288729" MODIFIED="1462659886138" TEXT="served files">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462826684322" ID="ID_1236430673" MODIFIED="1462826690107" TEXT="types of sensitive data">
<node COLOR="#111111" CREATED="1462826691178" ID="ID_867015679" MODIFIED="1462826714404" TEXT="business logic">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462826698738" ID="ID_125785644" MODIFIED="1462826715444" TEXT="secret algorithms">
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462826825802" ID="ID_1460857955" MODIFIED="1462828330663" TEXT="can keep method code in a folder named `server`"/>
<node COLOR="#111111" CREATED="1462828296755" ID="ID_763274988" MODIFIED="1462828321897" TEXT="better to split the method code">
<node COLOR="#111111" CREATED="1462828304194" ID="ID_1094036926" MODIFIED="1462828359556" TEXT="keep secret code on the server">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      // In a server-only file
    </p>
    <p>
      MMR = {
    </p>
    <p>
      &#160;&#160;updateWithSecretAlgorithm(userId) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;// your secret code here
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      ////////////////////////
    </p>
    <p>
      // In a file loaded on client and server
    </p>
    <p>
      const Meteor.users.methods.updateMMR = new ValidatedMethod({
    </p>
    <p>
      &#160;&#160;name: 'Meteor.users.methods.updateMMR',
    </p>
    <p>
      &#160;&#160;validate: null,
    </p>
    <p>
      &#160;&#160;run() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (this.isSimulation) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;// Simulation code for the client (optional)
    </p>
    <p>
      &#160;&#160;&#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;MMR.updateWithSecretAlgorithm(this.userId);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1462828370683" ID="ID_1612318889" MODIFIED="1462828522082" TEXT="code in (Meteor.isServer) still sent to client DONT DO">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Keep in mind that code inside if (Meteor.isServer) blocks is still sent to the client,
    </p>
    <p>
      it is just not executed. So don&#8217;t put any secret code in there.
    </p>
    <p>
      Secret API keys should never be stored in your source code at all, the next
    </p>
    <p>
      section will talk about how to handle them.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="stop-sign"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462826704706" ID="ID_1500651777" MODIFIED="1462826716092" TEXT="secret API keys">
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462828933843" ID="ID_50876703" MODIFIED="1462828940042" TEXT="securing API keys">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462828568779" ID="ID_1846615334" MODIFIED="1462828570804" TEXT="types">
<node COLOR="#111111" CREATED="1462828572363" ID="ID_743418459" MODIFIED="1462828593220" TEXT="database password">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462828580138" ID="ID_235430772" MODIFIED="1462828594236" TEXT="API keys for external APIs">
<icon BUILTIN="full-2"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462828628731" ID="ID_1893826581" MODIFIED="1462828631571" TEXT="solution">
<node COLOR="#111111" CREATED="1462828632435" ID="ID_1230440141" MODIFIED="1462828641160" TEXT="JSON settings file">
<node COLOR="#111111" CREATED="1462828643971" ID="ID_633241715" MODIFIED="1462828652343" TEXT="most app settings should be here"/>
<node COLOR="#111111" CREATED="1462828663291" ID="ID_341045605" MODIFIED="1462828665411" TEXT="meteor --settings development.json"/>
</node>
<node COLOR="#111111" CREATED="1462828814747" ID="ID_770094318" MODIFIED="1462828818860" TEXT="setting on client">
<node COLOR="#111111" CREATED="1462828756995" ID="ID_1238440332" MODIFIED="1462828768623" TEXT="public settings available on client"/>
<node COLOR="#111111" CREATED="1462828770283" ID="ID_1792832080" MODIFIED="1462828777492" TEXT="Meteor.settings.public"/>
</node>
<node COLOR="#111111" CREATED="1462828830707" ID="ID_522000299" MODIFIED="1462828842654" TEXT="api keys for OAuth">
<node COLOR="#111111" CREATED="1462828870771" ID="ID_1766326471" MODIFIED="1462828895645" TEXT="add keys to service-configuration collection in db"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462829010867" ID="ID_1966677004" MODIFIED="1462829012917" TEXT="SSL">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462829018787" ID="ID_106042297" MODIFIED="1462829035624" TEXT="every app with user data should run with SSL"/>
<node COLOR="#111111" CREATED="1462829078555" ID="ID_520882360" MODIFIED="1462829107988" TEXT="HTTP requests over HTTPS"/>
<node COLOR="#111111" CREATED="1462829089371" ID="ID_1447675679" MODIFIED="1462829103468" TEXT="websocket requests over WSS"/>
</node>
<node COLOR="#990000" CREATED="1462829194155" ID="ID_1469444429" MODIFIED="1462829198883" TEXT="security checklist">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462829223539" ID="ID_1830645523" MODIFIED="1462829581429" TEXT="no insecure or autopublish packages">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462829240563" ID="ID_501865819" MODIFIED="1462829582293" TEXT="validate all moethod &amp; publication arguments">
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462829304338" ID="ID_321014516" LINK="https://atmospherejs.com/meteor/audit-argument-checks" MODIFIED="1462829320893" TEXT="audit-argument-checks">
<icon BUILTIN="password"/>
</node>
<node COLOR="#111111" CREATED="1462829358363" ID="ID_1346711947" MODIFIED="1462829365612" TEXT="checks this automatically"/>
</node>
<node COLOR="#111111" CREATED="1462829369179" ID="ID_1926343577" MODIFIED="1462829583093" TEXT="deny write to the `profile` field on user documents">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462829393859" ID="ID_679255860" MODIFIED="1462829584149" TEXT="only use methods to work with data">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462829431931" ID="ID_1101566437" MODIFIED="1462829585125" TEXT="use specific selectors and filter fields on publications">
<icon BUILTIN="full-5"/>
</node>
<node COLOR="#111111" CREATED="1462829461259" ID="ID_1041260059" MODIFIED="1462829586989" TEXT="dont use raw HTML in blaze">
<icon BUILTIN="full-6"/>
</node>
<node COLOR="#111111" CREATED="1462829475659" ID="ID_1456697289" MODIFIED="1462829588653" TEXT="make sure secret API keys and passwords aren&apos;t in your source code">
<icon BUILTIN="full-7"/>
</node>
<node COLOR="#111111" CREATED="1462829518739" ID="ID_263382314" MODIFIED="1462829589901" TEXT="secure the data not the UI">
<icon BUILTIN="full-8"/>
</node>
<node COLOR="#111111" CREATED="1462829532355" ID="ID_1565873577" MODIFIED="1462829592229" TEXT="only trust `this.userId` inside methods and publications">
<icon BUILTIN="full-9"/>
</node>
<node COLOR="#111111" CREATED="1462829564259" ID="ID_1362730527" MODIFIED="1462829595205" TEXT="setup browser policy">
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-0"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1462650902625" ID="ID_1621126059" MODIFIED="1463135920077" TEXT="deployment &amp; monitoring">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1462877014198" ID="ID_652886502" MODIFIED="1462877021646" TEXT="deploying applications">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462876835726" ID="ID_237336373" MODIFIED="1462877024848" TEXT="deployment environments">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1462876844350" ID="ID_374415465" MODIFIED="1462876859121" TEXT="development">
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462876864654" ID="ID_1013780972" MODIFIED="1462876875926" TEXT="you local dev machine"/>
</node>
<node COLOR="#111111" CREATED="1462876850574" ID="ID_1623815074" MODIFIED="1462876859672" TEXT="staging">
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462876884142" ID="ID_1699134085" MODIFIED="1462876909088" TEXT="a test area environment before releasing"/>
<node COLOR="#111111" CREATED="1462876953134" ID="ID_981212134" MODIFIED="1462876961033" TEXT="close to final environment"/>
</node>
<node COLOR="#111111" CREATED="1462876853390" ID="ID_1430809913" MODIFIED="1462876860472" TEXT="production">
<icon BUILTIN="full-3"/>
<node COLOR="#111111" CREATED="1462876912798" ID="ID_1597364768" MODIFIED="1462876921904" TEXT="the real deployment"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462877029470" ID="ID_356239287" MODIFIED="1462877034200" TEXT="environment variables">
<node COLOR="#111111" CREATED="1462877051326" ID="ID_226226923" MODIFIED="1462877063808" TEXT="environment variables">
<icon BUILTIN="full-1"/>
<node COLOR="#111111" CREATED="1462877108798" ID="ID_733995319" MODIFIED="1462877117221" TEXT="ENV_VARS"/>
<node COLOR="#111111" CREATED="1462877120854" ID="ID_667421858" MODIFIED="1462877125194" TEXT="set on running process"/>
</node>
<node COLOR="#111111" CREATED="1462877058086" ID="ID_1732022229" MODIFIED="1462877064496" TEXT="settings">
<icon BUILTIN="full-2"/>
<node COLOR="#111111" CREATED="1462877280062" ID="ID_750421842" MODIFIED="1462877337435" TEXT="JSON object via --settings flag">
<node COLOR="#111111" CREATED="1462877575518" ID="ID_1175239516" MODIFIED="1462877580206" TEXT="for specific things">
<node COLOR="#111111" CREATED="1462877583790" ID="ID_1887664356" MODIFIED="1462877593245" TEXT="API keys"/>
<node COLOR="#111111" CREATED="1462877599470" ID="ID_1143412649" MODIFIED="1462877609155" TEXT="does not change between processes"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462877424894" ID="ID_1762853003" MODIFIED="1462877436561" TEXT="METEOR_SETTINGS environment variable">
<node COLOR="#111111" CREATED="1462878147071" ID="ID_724251688" MODIFIED="1462878164907" TEXT="process specific things"/>
<node COLOR="#111111" CREATED="1462879032485" ID="ID_888267884" MODIFIED="1462879037962" TEXT="e.g. different KADIRA_OPTIONS_HOSTNAME"/>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462879046359" ID="ID_1723692988" MODIFIED="1462879050693" TEXT="other considerations">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462879053847" ID="ID_781788497" MODIFIED="1462879055984" TEXT="domain name"/>
<node COLOR="#111111" CREATED="1462879056711" ID="ID_838785085" MODIFIED="1462879064490" TEXT="SSL certificate">
<node COLOR="#111111" CREATED="1462879199223" ID="ID_246886312" LINK="https://letsencrypt.org/" MODIFIED="1462879203251" TEXT="free"/>
</node>
<node COLOR="#111111" CREATED="1462879097463" ID="ID_1029987986" MODIFIED="1462879099633" TEXT="CDN">
<node COLOR="#111111" CREATED="1462879262615" ID="ID_783744037" MODIFIED="1462879269771" TEXT="not strictly required"/>
<node COLOR="#111111" CREATED="1462879270471" ID="ID_1883465750" MODIFIED="1462879278740" TEXT="can improve page load times"/>
<node COLOR="#111111" CREATED="1462879328367" ID="ID_532719341" MODIFIED="1462879343872" TEXT="use provider that supports `origin`">
<node COLOR="#111111" CREATED="1462879345136" ID="ID_634513869" LINK="http://joshowens.me/using-a-cdn-with-your-production-meteor-app/" MODIFIED="1462879359702" TEXT="CloudFront">
<node COLOR="#111111" CREATED="1462882937112" ID="ID_1090038945" MODIFIED="1462883004794" TEXT="select distribution">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462882948440" ID="ID_496929817" MODIFIED="1462883005490" TEXT="behaviour tap">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462882952552" ID="ID_107665116" MODIFIED="1462883006146" TEXT="select app origin">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462882960768" ID="ID_1333828296" MODIFIED="1462883006738" TEXT="edit button">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462882965344" ID="ID_1044307020" MODIFIED="1462883007850" TEXT="whitelist headers">
<icon BUILTIN="full-5"/>
<node COLOR="#111111" CREATED="1462882977032" ID="ID_1339031284" MODIFIED="1462882980838" TEXT="select origin"/>
</node>
<node COLOR="#111111" CREATED="1462882983392" ID="ID_591786828" MODIFIED="1462883009194" TEXT="`yes edit` button">
<icon BUILTIN="full-6"/>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462879455991" ID="ID_422525645" MODIFIED="1462879466576" TEXT="for JS &amp; CSS">
<node COLOR="#111111" CREATED="1462879677637" ID="ID_700382616" MODIFIED="1462879680550" TEXT="on server">
<node BACKGROUND_COLOR="#fff400" COLOR="#111111" CREATED="1462879474391" ID="ID_686087108" MODIFIED="1462879507935" TEXT="WebAppInternals.setBundledJsCssPrefix(&quot;http://mycdn.com&quot;)">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1462880284367" ID="ID_623430822" MODIFIED="1462880290747" TEXT="for dynamic prefixes">
<node BACKGROUND_COLOR="#fff400" COLOR="#111111" CREATED="1462880298807" ID="ID_1471271896" MODIFIED="1462880327292" TEXT="WebAppInternals.setBundledJsCssUrlRewriteHook()">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462880339463" ID="ID_163115515" MODIFIED="1462880755436" TEXT="change ULRs of public/ files to point @ CDN">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Before:
    </p>
    <p>
      
    </p>
    <p>
      &lt;img src=&quot;http://myapp.com/cats.gif&quot;&gt;
    </p>
    <p>
      
    </p>
    <p>
      After:
    </p>
    <p>
      
    </p>
    <p>
      Template.registerHelper(&quot;assetUrl&quot;, (asset) =&gt; {
    </p>
    <p>
      &#160;&#160;return &quot;http://mycdn.com/&quot; + asset
    </p>
    <p>
      });
    </p>
    <p>
      
    </p>
    <p>
      &lt;img src=&quot;{{assetUrl 'cats.gif'}}&quot;&gt;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node COLOR="#111111" CREATED="1462882821464" ID="ID_521864200" MODIFIED="1462882824052" TEXT="webfonts">
<node COLOR="#111111" CREATED="1462882825624" ID="ID_1650268370" MODIFIED="1462882839369" TEXT="configure headers for font"/>
<node COLOR="#111111" CREATED="1462882840632" ID="ID_734987426" MODIFIED="1462882855498" TEXT="cross-origin resource sharing">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import { WebApp } from 'meteor/webapp';
    </p>
    <p>
      
    </p>
    <p>
      WebApp.rawConnectHandlers.use(function(req, res, next) {
    </p>
    <p>
      &#160;&#160;if (req._parsedUrl.pathname.match(/\.(ttf|ttc|otf|eot|woff|font\.css|css)$/) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;res.setHeader('Access-Control-Allow-Origin', /* your hostname, or just '*' */);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;&#160;next();
    </p>
    <p>
      });
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1462883018464" ID="ID_589023612" MODIFIED="1462883023096" TEXT="deployment options">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462883024480" ID="ID_1451748875" LINK="https://www.meteor.com/why-meteor/pricing" MODIFIED="1462883786288" TEXT="galaxy">
<node COLOR="#111111" CREATED="1462883862745" ID="ID_1981955586" MODIFIED="1462883872381" TEXT="find your own MOngodb provider"/>
<node COLOR="#111111" CREATED="1462883873057" ID="ID_872683340" LINK="https://mlab.com/" MODIFIED="1462883880934" TEXT="mLab"/>
</node>
<node COLOR="#111111" CREATED="1462883027680" ID="ID_153893257" MODIFIED="1462883031162" TEXT="meteor up">
<node COLOR="#111111" CREATED="1462883931897" ID="ID_231199506" LINK="https://www.youtube.com/watch?v=WLGdXtZMmiI" MODIFIED="1462883940574" TEXT="`mupx`"/>
</node>
<node COLOR="#111111" CREATED="1462883031816" ID="ID_324902010" MODIFIED="1462883036486" TEXT="custom development"/>
</node>
<node COLOR="#990000" CREATED="1462884273169" ID="ID_1704117426" MODIFIED="1462884276664" TEXT="deployment process">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462884333553" ID="ID_1014235879" MODIFIED="1462884346336" TEXT="important to have consistent process"/>
<node COLOR="#111111" CREATED="1462884346873" ID="ID_1658874740" MODIFIED="1462884355601" TEXT="QA important">
<node COLOR="#111111" CREATED="1462884376529" ID="ID_1984713262" MODIFIED="1462884441347" TEXT="deploy new version to staging server">
<icon BUILTIN="full-1"/>
</node>
<node COLOR="#111111" CREATED="1462884387353" ID="ID_1840585285" MODIFIED="1462884442179" TEXT="QA application on staging server">
<icon BUILTIN="full-2"/>
</node>
<node COLOR="#111111" CREATED="1462884396057" ID="ID_654134181" MODIFIED="1462884442931" TEXT="fix bugs in step 2 &amp; repeat">
<icon BUILTIN="full-3"/>
</node>
<node COLOR="#111111" CREATED="1462884407561" ID="ID_620318531" MODIFIED="1463065546035" TEXT="once ou are satisfied, relese same version to production">
<icon BUILTIN="full-4"/>
</node>
<node COLOR="#111111" CREATED="1462884429209" ID="ID_16079260" MODIFIED="1462884444483" TEXT="run final QA on production">
<icon BUILTIN="full-5"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462884474497" ID="ID_1039543994" MODIFIED="1462884480498" TEXT="continuous deployment">
<node COLOR="#111111" CREATED="1462884482465" ID="ID_1292701934" LINK="https://medium.com/@natestrauser/migrating-meteor-apps-from-modulus-to-galaxy-with-continuous-deployment-from-codeship-aed2044cabd9#.lvio4sh4a" MODIFIED="1462884500010" TEXT="e.g. automatic on git push to master"/>
</node>
<node COLOR="#111111" CREATED="1462885398281" ID="ID_475889750" MODIFIED="1463007662926" TEXT="rolling deployments &amp; data versions">
<arrowlink DESTINATION="ID_664010628" ENDARROW="Default" ENDINCLINATION="1623;0;" ID="Arrow_ID_200386197" STARTARROW="None" STARTINCLINATION="1623;0;"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462885666497" ID="ID_1840422690" MODIFIED="1462885671406" TEXT="analytics">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462885680241" ID="ID_1372383128" LINK="https://atmospherejs.com/okgrow/analytics" MODIFIED="1462885712027" TEXT="okgrow:analytics">
<icon BUILTIN="password"/>
<node COLOR="#111111" CREATED="1462885743857" ID="ID_1981993669" MODIFIED="1462885756605" TEXT="can configure for google analytics"/>
<node COLOR="#111111" CREATED="1462885762873" ID="ID_1102011077" MODIFIED="1462885779073" TEXT="hooks into Flow Router to record page events"/>
<node COLOR="#111111" CREATED="1462885782393" ID="ID_271522854" MODIFIED="1462885799221" TEXT="can create custom event tracking"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462885809977" ID="ID_448653036" MODIFIED="1462885818320" TEXT="monitoring you application">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462886712873" ID="ID_1135525103" LINK="https://www.pingdom.com/" MODIFIED="1462886727652" TEXT="Pingdom"/>
<node COLOR="#111111" CREATED="1462886732962" ID="ID_1537227079" MODIFIED="1462886752676" TEXT="Monitoring with Galaxy"/>
<node COLOR="#111111" CREATED="1462886786986" ID="ID_1186837246" LINK="https://kadira.io/" MODIFIED="1462886795103" TEXT="Kadira">
<node COLOR="#111111" CREATED="1462886864833" ID="ID_981106168" MODIFIED="1462886878779" TEXT="method &amp; publication latency"/>
<node COLOR="#111111" CREATED="1462886942954" ID="ID_1175313646" MODIFIED="1462886950550" TEXT="livequery monitoring"/>
</node>
</node>
<node COLOR="#990000" CREATED="1462887076258" ID="ID_1802767991" MODIFIED="1462887079076" TEXT="SEO">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1462887172274" ID="ID_1304016170" MODIFIED="1462887184454" TEXT="better to SSR your HTML">
<node COLOR="#111111" CREATED="1462887186066" ID="ID_1694634433" LINK="https://prerender.io/" MODIFIED="1462887358420" TEXT="prerender.io"/>
<node COLOR="#111111" CREATED="1462887205978" ID="ID_611907877" LINK="https://atmospherejs.com/dfischer/prerenderio" MODIFIED="1462887213797" TEXT="dfischer:prerenderio"/>
</node>
<node COLOR="#111111" CREATED="1462887223282" ID="ID_1634590765" MODIFIED="1462887229358" TEXT="via galaxy">
<node COLOR="#111111" CREATED="1462887233970" ID="ID_1165503952" MODIFIED="1462887358420" TEXT="builting in">
<arrowlink DESTINATION="ID_1694634433" ENDARROW="Default" ENDINCLINATION="707;64;" ID="Arrow_ID_1572539054" STARTARROW="None" STARTINCLINATION="86;336;"/>
</node>
</node>
<node COLOR="#111111" CREATED="1462887278370" ID="ID_1288894838" MODIFIED="1462887293373" TEXT="set &lt;title&gt; &amp; &lt;head&gt;">
<node COLOR="#111111" CREATED="1462887294970" ID="ID_1527846009" LINK="https://atmospherejs.com/kadira/dochead" MODIFIED="1462887316283" TEXT="kadira:dochead"/>
<node COLOR="#111111" CREATED="1462887326411" ID="ID_820846119" MODIFIED="1462887343842" TEXT="call from onCreated callback @ page level component"/>
</node>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1461837714354" ID="ID_1255850192" MODIFIED="1462312589951" POSITION="left" TEXT="introduction">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<icon BUILTIN="full-1"/>
<node COLOR="#00b439" CREATED="1461837837624" FOLDED="true" ID="ID_1853826901" MODIFIED="1463006693119" TEXT="benefits">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud COLOR="#f0f0f0"/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461837847248" ID="ID_1759763269" MODIFIED="1462205785969" TEXT="one language">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837852968" ID="ID_1868169407" MODIFIED="1462205785970" TEXT="data on the wire">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837866008" ID="ID_1844896882" MODIFIED="1462205785970" TEXT="embraces the ecosystem">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837874688" ID="ID_4048265" MODIFIED="1462205785970" TEXT="full stack reacivity">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1461837895432" FOLDED="true" ID="ID_1540253830" MODIFIED="1463090915063" TEXT="resources">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461837904336" ID="ID_1265927724" LINK="https://www.meteor.com/tutorials/react/creating-an-app" MODIFIED="1462205785970" TEXT="official tutorial">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461838012584" ID="ID_814543749" LINK="https://stackoverflow.com/questions/tagged/meteor" MODIFIED="1462205785970" TEXT="stackoverflow">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837913073" ID="ID_1548115977" LINK="https://forums.meteor.com/" MODIFIED="1462205785970" TEXT="meteor forum">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837923776" ID="ID_1107099384" LINK="http://docs.meteor.com/#/full/" MODIFIED="1462205785970" TEXT="meteor docs">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837927064" ID="ID_1290217373" LINK="https://atmospherejs.com/" MODIFIED="1462205785970" TEXT="atmosphere">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461837933136" ID="ID_445279249" LINK="https://www.meteor.com/projects" MODIFIED="1462205785970" TEXT="projects">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461968399377" ID="ID_1879094973" LINK="https://themeteorchef.com/" MODIFIED="1462205785970" TEXT="themeteorchef">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1461838245392" ID="ID_1604941673" MODIFIED="1462205785971" POSITION="left" TEXT="code style">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<icon BUILTIN="full-2"/>
<node COLOR="#00b439" CREATED="1461838292472" FOLDED="true" ID="ID_1935250550" MODIFIED="1463006707950" TEXT="benefits">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461838299448" ID="ID_143709678" MODIFIED="1462205785971" TEXT="easy to read code">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461838318104" ID="ID_1406297949" MODIFIED="1462205785971" TEXT="automatic error checking">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461838380097" ID="ID_1673624093" MODIFIED="1462205785972" TEXT="deeper understanding">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1461838394808" FOLDED="true" ID="ID_170558294" MODIFIED="1463006717472" TEXT="javascript style guide">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461838476368" ID="ID_1053299358" MODIFIED="1462205785972" TEXT="use the ecmascript package">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461838526584" ID="ID_1826248870" MODIFIED="1462205785972" TEXT="included by defaul in 1_3 apps"/>
<node COLOR="#111111" CREATED="1461838953384" FOLDED="true" ID="ID_1664093544" LINK="https://docs.meteor.com/#/full/ecmascript" MODIFIED="1462615264911" TEXT="full list of features">
<node COLOR="#111111" CREATED="1461840284401" ID="ID_1177775718" MODIFIED="1462614770164" TEXT="es3.propertyLiterals">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Makes it safe to use reserved keywords like catch as unquoted keys in object literals.
    </p>
    <p>
      For example, { catch: 123 } is translated to { &quot;catch&quot;: 123 }.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840302721" ID="ID_528338016" MODIFIED="1462614783146" TEXT="es3.memberExpressionLiterals">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Makes it safe to use reserved keywords as property names. For example,
    </p>
    <p>
      object.catch is translated to object[&quot;catch&quot;].
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840336417" ID="ID_826359340" MODIFIED="1462614805680" TEXT="es6.arrowFunctions">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Provides a shorthand for function expressions.
    </p>
    <p>
      For example, [1, 2, 3].map(x =&gt; x + 1) evaluates to [2, 3, 4].
    </p>
    <p>
      If this is used in the body of the arrow function, it will be automatically bound to
    </p>
    <p>
      the value of this in the enclosing scope.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840348769" ID="ID_114352054" MODIFIED="1462614837431" TEXT="es6.literals">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Adds support for binary and octal numeric literals. For example,
    </p>
    <p>
      0b111110111 === 503 and 0o767 === 503.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840360425" ID="ID_105184988" MODIFIED="1462614855529" TEXT="es6.templateLiterals">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Enables multi-line strings delimited by backticks instead of quotation marks, with
    </p>
    <p>
      variable interpolation: js
    </p>
    <p>
      var name = &quot;Ben&quot;;
    </p>
    <p>
      var message = `My name is:
    </p>
    <p>
      ${name}`;
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840389657" ID="ID_1041092410" MODIFIED="1462614866724" TEXT="es6.classes">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Enables class syntax:
    </p>
    <p>
      
    </p>
    <p>
      class Base {
    </p>
    <p>
      constructor(a, b) {
    </p>
    <p>
      &#160;&#160;this.value = a * b;
    </p>
    <p>
      }
    </p>
    <p>
      }&lt;/p&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;p&gt;class Derived extends Base {
    </p>
    <p>
      constructor(a, b) {
    </p>
    <p>
      &#160;&#160;super(a + 1, b + 1);
    </p>
    <p>
      }
    </p>
    <p>
      }&lt;/p&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;p&gt;var d = new Derived(2, 3);
    </p>
    <p>
      d.value; // 12
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840406913" ID="ID_1004378368" MODIFIED="1462614886541" TEXT="es6.constants">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows defining block-scoped variables that are not allowed to be redefined:
    </p>
    <p>
      
    </p>
    <p>
      const GOLDEN_RATIO = (1 + Math.sqrt(5)) / 2;&lt;/p&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;p&gt;// This reassignment will be forbidden by the compiler:
    </p>
    <p>
      GOLDEN_RATIO = &quot;new value&quot;;
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840424921" ID="ID_585054990" MODIFIED="1462614903853" TEXT="es6.blockScoping">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Enables the let and const keywords as alternatives to var. The key difference is
    </p>
    <p>
      that variables defined using let or const are visible only within the block where they
    </p>
    <p>
      are declared, rather than being visible anywhere in the enclosing function.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840446153" ID="ID_1015601227" MODIFIED="1462614930388" TEXT="es6.properties.shorthand">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows omitting the value of an object literal property when the desired value is
    </p>
    <p>
      held by a variable that has the same name as the property key. For example,
    </p>
    <p>
      instead of writing { x: x, y: y, z: &quot;asdf&quot; } you can just write { x, y, z: &quot;asdf&quot; }.
    </p>
    <p>
      Methods can also be written without the : function property syntax: js
    </p>
    <p>
      var obj = {
    </p>
    <p>
      oldWay: function (a, b) { ... },
    </p>
    <p>
      newWay(a, b) { ... }
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840456145" ID="ID_1260242437" MODIFIED="1462614990433" TEXT="es6.properties.computed">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows object literal properties with dynamically computed keys:
    </p>
    <p>
      
    </p>
    <p>
      var counter = 0;
    </p>
    <p>
      function getKeyName() {
    </p>
    <p>
      return &quot;key&quot; + counter++;
    </p>
    <p>
      }&lt;/p&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;p&gt;var obj = {
    </p>
    <p>
      [getKeyName()]: &quot;zero&quot;,
    </p>
    <p>
      [getKeyName()]: &quot;one&quot;,
    </p>
    <p>
      };&lt;/p&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;p&gt;obj.key0; // &quot;zero&quot;
    </p>
    <p>
      obj.key1; // &quot;one&quot;
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840466209" ID="ID_395911569" MODIFIED="1462615090912" TEXT="es6.parameters">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Default expressions for function parameters, evaluated whenever the parameter
    </p>
    <p>
      is undefined, ...rest parameters for capturing remaining arguments without using
    </p>
    <p>
      the arguments object:
    </p>
    <p>
      
    </p>
    <p>
      function add(a = 0, ...rest) {
    </p>
    <p>
      rest.forEach(n =&gt; a += n);
    </p>
    <p>
      return a;
    </p>
    <p>
      }&lt;/p&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;p&gt;add(); // 0
    </p>
    <p>
      add(1, 2, 3); // 6
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840472049" ID="ID_1586550253" MODIFIED="1462615109853" TEXT="es6.spread">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows an array of arguments to be interpolated into a list of arguments to a
    </p>
    <p>
      function call, new expression, or array literal, without using Function.prototype.apply: js
    </p>
    <p>
      add(1, ...[2, 3, 4], 5); // 15
    </p>
    <p>
      new Node(&quot;name&quot;, ...children);
    </p>
    <p>
      [1, ...[2, 3, 4], 5]; // [1, 2, 3, 4, 5]
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840478473" ID="ID_1769349646" MODIFIED="1462615116224" TEXT="es6.forOf">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Provides an easy way to iterate over the elements of a collection: js
    </p>
    <p>
      let sum = 0;
    </p>
    <p>
      for (var x of [1, 2, 3]) {
    </p>
    <p>
      sum += x;
    </p>
    <p>
      }
    </p>
    <p>
      x; // 6
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840483728" ID="ID_571049549" MODIFIED="1462615214873" TEXT="es6.destructuring">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Destructuring is the technique of using an array or object pattern on the left-hand
    </p>
    <p>
      side of an assignment or declaration, in place of the usual variable or parameter,
    </p>
    <p>
      so that certain sub-properties of the value on the right-hand side will be bound to
    </p>
    <p>
      identifiers that appear within the pattern.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840491817" ID="ID_400099537" MODIFIED="1462615230601" TEXT="es7.objectRestSpread">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Supports catch-all ...rest properties in object literal declarations and assignments: js
    </p>
    <p>
      let { x, y, ...rest } = { x: 1, y: 2, a: 3, b: 4 };
    </p>
    <p>
      x; // 1
    </p>
    <p>
      y; // 2
    </p>
    <p>
      rest; // { a: 3, b: 4 }
    </p>
    <p>
      Also enables ...spread properties in object literal expressions: js
    </p>
    <p>
      let n = { x, y, ...rest };
    </p>
    <p>
      n; // { x: 1, y: 2, a: 3, b: 4 }
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840500913" ID="ID_698447407" MODIFIED="1462615246351" TEXT="es7.trailingFunctionCommas">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allows the final parameter of a function to be followed by a comma, provided that
    </p>
    <p>
      parameter is not a ...rest parameter.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#111111" CREATED="1461840506913" ID="ID_460544253" MODIFIED="1462615254994" TEXT="flow">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Permits the use of Flow type annotations. These annotations are simply stripped
    </p>
    <p>
      from the code, so they have no effect on the code's behavior, but you can run the
    </p>
    <p>
      flow tool over your code to check the types if desired.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#111111" CREATED="1461840701273" ID="ID_701491320" LINK="http://info.meteor.com/blog/es2015-get-started" MODIFIED="1462205785973" TEXT="ES2015 and meteor"/>
<node COLOR="#111111" CREATED="1461840717553" ID="ID_243648860" LINK="http://info.meteor.com/blog/set-up-sublime-text-for-meteor-es6-es2015-and-jsx-syntax-and-linting" MODIFIED="1462205785973" TEXT="setup sublime text for ES2015"/>
</node>
<node COLOR="#990000" CREATED="1461840817761" ID="ID_1675647432" LINK="https://github.com/airbnb/javascript" MODIFIED="1462205785973" TEXT="use the Airbnb style guide">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461840859137" ID="ID_1052779234" LINK="https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb" MODIFIED="1462205785973" TEXT="Airbnb eslint configuration"/>
<node COLOR="#111111" CREATED="1461841274217" ID="ID_1932708143" MODIFIED="1462205785974" TEXT="sublime text packages">
<node COLOR="#111111" CREATED="1461841282937" ID="ID_1127574223" LINK="https://github.com/babel/babel-sublime#installation" MODIFIED="1462205785974" TEXT="babel"/>
<node COLOR="#111111" CREATED="1461841290833" ID="ID_1339447602" LINK="http://sublimelinter.readthedocs.org/en/latest/installation.html" MODIFIED="1462205785974" TEXT="sublinter"/>
<node COLOR="#111111" CREATED="1461841296385" ID="ID_154353959" LINK="https://github.com/roadhump/SublimeLinter-eslint#plugin-installation" MODIFIED="1462205785974" TEXT="sublinter-contrib-eslint"/>
</node>
</node>
</node>
<node COLOR="#00b439" CREATED="1461841353233" FOLDED="true" ID="ID_1391524057" MODIFIED="1463007441967" TEXT="meteor code style">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461841446668" ID="ID_1848788470" MODIFIED="1462205785974" TEXT="collections">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Collections should be named as a plural noun, in PascalCase.
    </p>
    <p>
      The name of the collection in the database (the first argument to the collection constructor)<br />should be the same as the name of the JavaScript symbol.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461841674826" ID="ID_950325075" MODIFIED="1462205785974" TEXT="PascalCase names"/>
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461841565266" ID="ID_1187644534" MODIFIED="1462205785974" TEXT="Lists = new Mongo.Collection(&apos;Lists&apos;);">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#111111" CREATED="1461841696802" ID="ID_160741466" MODIFIED="1462205785974" TEXT="camelCased for fields in database"/>
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461841727922" ID="ID_1776431393" MODIFIED="1462205785974" TEXT="Widgets.insert({   myFieldName: &apos;Hello, world!&apos;,   otherFieldName: &apos;Goodbye.&apos; });"/>
</node>
<node COLOR="#990000" CREATED="1461841459082" ID="ID_582275509" MODIFIED="1462205785975" TEXT="methods &amp; publications">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461841791010" ID="ID_730003147" MODIFIED="1462205785975" TEXT="camelCased and namspaced to module"/>
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461841814369" ID="ID_141097685" MODIFIED="1462205785975" TEXT="updateText = new ValidatedMethod({   name: &apos;todos.updateText&apos;,   // ... });"/>
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461841887058" ID="ID_1706284092" MODIFIED="1462205785975" TEXT="Meteor.publish(&apos;lists.public&apos;, function listsPublic() {   // ... });"/>
</node>
<node COLOR="#990000" CREATED="1461841466394" ID="ID_1208153414" MODIFIED="1462205785975" TEXT="files, exports, packages">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461843062578" HGAP="129" ID="ID_261520551" MODIFIED="1463006788022" TEXT="use import &amp; export" VSHIFT="24"/>
<node COLOR="#111111" CREATED="1461843116314" ID="ID_1696665023" MODIFIED="1462615854063" TEXT="one class / UI components / collection per file">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#111111" CREATED="1461843213946" ID="ID_1098213795" MODIFIED="1462205785975" TEXT="name it same as thing it defines"/>
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461843239882" ID="ID_510046837" MODIFIED="1462205785975" TEXT="export default class ClickCounter { ... }"/>
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461843246058" ID="ID_1997012411" MODIFIED="1462205785975" TEXT="import ClickCounter from &apos;./ClickCounter.js&apos;;"/>
<node COLOR="#111111" CREATED="1461843444482" ID="ID_1479625421" MODIFIED="1462205785975" TEXT="decontruct for pre 1_3 packages">
<node BACKGROUND_COLOR="#edf00e" COLOR="#111111" CREATED="1461843467314" ID="ID_1055861128" MODIFIED="1462205785975" TEXT="import { Meteor } from &apos;meteor/meteor&apos;;"/>
</node>
</node>
</node>
<node COLOR="#990000" CREATED="1461841477226" ID="ID_610692514" MODIFIED="1462205785975" TEXT="templates &amp; componenets">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
<node COLOR="#0033ff" CREATED="1461843599250" ID="ID_25430103" MODIFIED="1462887436751" POSITION="left" TEXT="application structure">
<edge STYLE="sharp_bezier" WIDTH="8"/>
<font NAME="SansSerif" SIZE="18"/>
<icon BUILTIN="full-3"/>
<node COLOR="#00b439" CREATED="1461844430730" FOLDED="true" ID="ID_787226349" MODIFIED="1463007476391" TEXT="universal JS">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461844002996" ID="ID_1075136270" MODIFIED="1462205785977" TEXT="use import to include CSS, HTML and JS files">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      export const listRenderHold = LaunchScreen.hold();&#160;&#160;// named export
    </p>
    <p>
      export { Todos };&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// named export
    </p>
    <p>
      export default Lists;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// default export
    </p>
    <p>
      export default new Collection('lists');&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// default export
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461844349802" ID="ID_942013283" MODIFIED="1462205785977" TEXT="ok to use &apos;require&apos; in common code ">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      if (Meteor.isClient) {
    </p>
    <p>
      &#160;&#160;require('./client-only-file.js');
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#edf00e" COLOR="#990000" CREATED="1461844029320" ID="ID_74511390" MODIFIED="1462205785977" TEXT="import moment from &apos;moment&apos;;          // default import from npm">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#edf00e" COLOR="#990000" CREATED="1461844299291" ID="ID_663016000" MODIFIED="1462205785977" TEXT="import { HTTP } from &apos;meteor/http&apos;;   // named import from Atmosphere">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#e0f806" COLOR="#990000" CREATED="1461863124945" ID="ID_524998441" MODIFIED="1462205785977" TEXT="import { Meteor } from &apos;meteor/meteor&apos;;">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node BACKGROUND_COLOR="#e0f806" COLOR="#990000" CREATED="1461863134369" ID="ID_280377713" MODIFIED="1462205785977" TEXT="import { EJSON } from &apos;meteor/ejson&apos;;">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1461844465266" ID="ID_101396548" MODIFIED="1463150165625" TEXT="file structure">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461844501531" ID="ID_457337133" MODIFIED="1462205785977" TEXT="place all code inside /imports directory">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461844537355" ID="ID_442574400" MODIFIED="1462205785977" TEXT="create clients/main.js &amp; server/main.js for entry points">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461844616626" ID="ID_1874916145" MODIFIED="1462205785977" TEXT="main.js file should import startup modules">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461861139068" ID="ID_893141758" MODIFIED="1463150342300" TEXT="example directory layout">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font face="Monospaced" color="#0162fe">imports</font></b>/
    </p>
    <p>
      &#160;&#160;<b><font color="#ff0000">startup</font></b>/
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#1eff04">client</font>/
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;index.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0b0d22"># import client startup&#160;through a single index entry point</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;routes.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# set up all routes in the app
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;useraccounts-configuration.js # configure login templates
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#3cf909">server</font>/
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;fixtures.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# fill the DB with example data on startup
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;index.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# import server startup through a single index entry point
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;<b><font color="#ff0000">api</font></b>/
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#0df90f">lists</font>/&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# a unit of domain logic, make a folder for each Mongo db table
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;server/
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;publications.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# all list-related publications
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;publications.tests.js&#160;&#160;# tests for the list publications
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;lists.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# definition of the Lists collection
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;lists.tests.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# tests for the behavior of that collection
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;methods.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# methods related to lists
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;methods.tests.js&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# tests for those methods
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;<b><font color="#ff0000">ui</font>/</b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#08eb0e">components</font>/&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# all reusable components in the application
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# can be split by domain if there are many, include html,css, js for each component
    </p>
    <p>
      &#160;&#160;&#160;&#160;layouts/&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# wrapper components for behaviour and visuals
    </p>
    <p>
      &#160;&#160;&#160;&#160;pages/&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# entry points for rendering used by the router
    </p>
    <p>
      
    </p>
    <p>
      <b><font face="Monospaced" color="#0431f7">client</font></b>/
    </p>
    <p>
      &#160;&#160;<b><font color="#ff0000">main.js</font></b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# client entry point, imports all client code, calls the startup code withing imports/startup/client
    </p>
    <p>
      
    </p>
    <p>
      <b><font face="Monospaced" color="#0321f5">server</font></b>/
    </p>
    <p>
      &#160;&#160;<b><font color="#fe0101">main.js</font></b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;# server entry point, imports all server code, calles the startup code within imports/startup/server
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1461863199001" FOLDED="true" ID="ID_1128994904" MODIFIED="1462887427005" TEXT="default file load order">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <ol>
      <li>
        &#160;&#160;&#160;&#160;HTML template files are always loaded before everything else
      </li>
      <li>
        &#160;&#160;&#160;&#160;Files beginning with main. are loaded last
      </li>
      <li>
        &#160;&#160;&#160;&#160;Files inside any lib/ directory are loaded next
      </li>
      <li>
        &#160;&#160;&#160;&#160;Files with deeper paths are loaded next
      </li>
      <li>
        &#160;&#160;&#160;&#160;Files are then loaded in alphabetical order of the entire path
      </li>
    </ol>
  </body>
</html></richcontent>
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461863268233" ID="ID_1853335563" MODIFIED="1462205785978" TEXT="special directories">
<font NAME="SansSerif" SIZE="14"/>
<node COLOR="#111111" CREATED="1461863280817" ID="ID_1547058398" MODIFIED="1462205785978" TEXT="imports"/>
<node COLOR="#111111" CREATED="1461863300880" ID="ID_1853550561" MODIFIED="1462205785978" TEXT="node_modules"/>
<node COLOR="#111111" CREATED="1461863307945" ID="ID_1671298158" MODIFIED="1462205785978" TEXT="client"/>
<node COLOR="#111111" CREATED="1461863311129" ID="ID_161760457" MODIFIED="1462205785978" TEXT="server"/>
<node COLOR="#111111" CREATED="1461863319041" ID="ID_1301267977" MODIFIED="1462205785978" TEXT="public"/>
<node COLOR="#111111" CREATED="1461863522049" ID="ID_871761774" MODIFIED="1462205785978" TEXT="private">
<node COLOR="#111111" CREATED="1461863534585" ID="ID_1764146825" LINK="http://docs.meteor.com/#/full/assets_getText" MODIFIED="1462205785978" TEXT="Assets API"/>
</node>
<node COLOR="#111111" CREATED="1461863321201" ID="ID_1333142264" MODIFIED="1462205785978" TEXT="client/compatibility"/>
<node COLOR="#111111" CREATED="1461863341369" ID="ID_223618661" MODIFIED="1462205785978" TEXT="tests"/>
</node>
</node>
<node COLOR="#00b439" CREATED="1461863601425" FOLDED="true" ID="ID_1548015980" MODIFIED="1463135918861" TEXT="splitting into multiple aps">
<edge STYLE="bezier" WIDTH="thin"/>
<cloud/>
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node COLOR="#990000" CREATED="1461863612521" ID="ID_828475598" MODIFIED="1462205785978" TEXT="sharing code">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461863617369" ID="ID_84635666" MODIFIED="1462205785978" TEXT="sharing data">
<font NAME="SansSerif" SIZE="14"/>
</node>
<node COLOR="#990000" CREATED="1461863620673" ID="ID_194975379" MODIFIED="1462205785979" TEXT="sharing accounts">
<font NAME="SansSerif" SIZE="14"/>
</node>
</node>
</node>
</node>
</map>
