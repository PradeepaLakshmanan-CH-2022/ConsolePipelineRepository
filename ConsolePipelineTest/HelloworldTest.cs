using ConsolePipelineRepository;

namespace ConsolePipelineTest
{
    [TestClass]
    public class HelloworldTest
    {
        [TestMethod]
        public void TestMethod1()
        {
            Helloworld helloworld = new Helloworld();
            var expected = "Hello,Your Pipeline Successful";
            var actual = helloworld.GetName();
            Assert.AreEqual(expected, actual);
        }
    }
}