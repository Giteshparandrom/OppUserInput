public class OppUserInpuptHandler {
    public Opportunity oppObj{get;set;}
    
    public OppUserInpuptHandler(){
        oppObj = new Opportunity();
        oppObj.Name='Undefine';
        oppObj.CloseDate= System.Today();
        oppObj.StageName='Qualification';
        
    }
    //Comment section from replica branch
    public pageReference save(){
        INSERT oppObj;
        pageReference pgObj;
        pgObj = new pageReference('/'+oppObj.Id);
        return pgObj;
    }
    public pageReference cancel(){
        pageReference pgObj;
        pgObj = new pageReference('https://parandrome-a-dev-ed--c.develop.vf.force.com/apex/OppUserInput?core.apexpages.request.devconsole=1');
        return pgObj;
    }
}
