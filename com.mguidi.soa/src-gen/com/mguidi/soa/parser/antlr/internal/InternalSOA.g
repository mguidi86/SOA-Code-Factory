/*
* generated by Xtext
*/
grammar InternalSOA;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package com.mguidi.soa.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package com.mguidi.soa.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import com.mguidi.soa.services.SOAGrammarAccess;

}

@parser::members {

 	private SOAGrammarAccess grammarAccess;
 	
    public InternalSOAParser(TokenStream input, SOAGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Architecture";	
   	}
   	
   	@Override
   	protected SOAGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleArchitecture
entryRuleArchitecture returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getArchitectureRule()); }
	 iv_ruleArchitecture=ruleArchitecture 
	 { $current=$iv_ruleArchitecture.current; } 
	 EOF 
;

// Rule Architecture
ruleArchitecture returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@applicationId' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getArchitectureAccess().getApplicationIdKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getArchitectureAccess().getColonKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getArchitectureAccess().getNameQualifiedNameParserRuleCall_2_0()); 
	    }
		lv_name_2_0=ruleQualifiedName		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getArchitectureRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"QualifiedName");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getArchitectureAccess().getModuleModuleParserRuleCall_3_0()); 
	    }
		lv_module_3_0=ruleModule		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getArchitectureRule());
	        }
       		set(
       			$current, 
       			"module",
        		lv_module_3_0, 
        		"Module");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleModule
entryRuleModule returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModuleRule()); }
	 iv_ruleModule=ruleModule 
	 { $current=$iv_ruleModule.current; } 
	 EOF 
;

// Rule Module
ruleModule returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@moduleName' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getModuleAccess().getModuleNameKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getModuleAccess().getColonKeyword_1());
    }
(
(
		lv_name_2_0=RULE_ID
		{
			newLeafNode(lv_name_2_0, grammarAccess.getModuleAccess().getNameIDTerminalRuleCall_2_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getModuleRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_2_0, 
        		"ID");
	    }

)
)	otherlv_3='@version' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getModuleAccess().getVersionKeyword_3());
    }
	otherlv_4=':' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getModuleAccess().getColonKeyword_4());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getModuleAccess().getVersionVersionParserRuleCall_5_0()); 
	    }
		lv_version_5_0=ruleVersion		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModuleRule());
	        }
       		set(
       			$current, 
       			"version",
        		lv_version_5_0, 
        		"Version");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getModuleAccess().getImportsImportParserRuleCall_6_0()); 
	    }
		lv_imports_6_0=ruleImport		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModuleRule());
	        }
       		add(
       			$current, 
       			"imports",
        		lv_imports_6_0, 
        		"Import");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getModuleAccess().getModelModelParserRuleCall_7_0()); 
	    }
		lv_model_7_0=ruleModel		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModuleRule());
	        }
       		set(
       			$current, 
       			"model",
        		lv_model_7_0, 
        		"Model");
	        afterParserOrEnumRuleCall();
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getModuleAccess().getExceptionsExceptionsParserRuleCall_8_0()); 
	    }
		lv_exceptions_8_0=ruleExceptions		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModuleRule());
	        }
       		set(
       			$current, 
       			"exceptions",
        		lv_exceptions_8_0, 
        		"Exceptions");
	        afterParserOrEnumRuleCall();
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getModuleAccess().getServicesServiceParserRuleCall_9_0()); 
	    }
		lv_services_9_0=ruleService		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModuleRule());
	        }
       		add(
       			$current, 
       			"services",
        		lv_services_9_0, 
        		"Service");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); } 
	 iv_ruleQualifiedName=ruleQualifiedName 
	 { $current=$iv_ruleQualifiedName.current.getText(); }  
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); 
    }
(
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); 
    }
    this_ID_2=RULE_ID    {
		$current.merge(this_ID_2);
    }

    { 
    newLeafNode(this_ID_2, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); 
    }
)*)
    ;





// Entry rule entryRuleVersion
entryRuleVersion returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getVersionRule()); } 
	 iv_ruleVersion=ruleVersion 
	 { $current=$iv_ruleVersion.current.getText(); }  
	 EOF 
;

// Rule Version
ruleVersion returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_INT_0=RULE_INT    {
		$current.merge(this_INT_0);
    }

    { 
    newLeafNode(this_INT_0, grammarAccess.getVersionAccess().getINTTerminalRuleCall_0()); 
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionAccess().getFullStopKeyword_1()); 
    }
    this_INT_2=RULE_INT    {
		$current.merge(this_INT_2);
    }

    { 
    newLeafNode(this_INT_2, grammarAccess.getVersionAccess().getINTTerminalRuleCall_2()); 
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionAccess().getFullStopKeyword_3()); 
    }
    this_INT_4=RULE_INT    {
		$current.merge(this_INT_4);
    }

    { 
    newLeafNode(this_INT_4, grammarAccess.getVersionAccess().getINTTerminalRuleCall_4()); 
    }
(
	kw='-' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getVersionAccess().getHyphenMinusKeyword_5_0()); 
    }
    this_ID_6=RULE_ID    {
		$current.merge(this_ID_6);
    }

    { 
    newLeafNode(this_ID_6, grammarAccess.getVersionAccess().getIDTerminalRuleCall_5_1()); 
    }
)?)
    ;





// Entry rule entryRuleImport
entryRuleImport returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getImportRule()); }
	 iv_ruleImport=ruleImport 
	 { $current=$iv_ruleImport.current; } 
	 EOF 
;

// Rule Import
ruleImport returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@import' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getImportAccess().getImportKeyword_0());
    }
	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getImportAccess().getColonKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameParserRuleCall_2_0()); 
	    }
		lv_importedNamespace_2_0=ruleQualifiedName		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getImportRule());
	        }
       		set(
       			$current, 
       			"importedNamespace",
        		lv_importedNamespace_2_0, 
        		"QualifiedName");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@model' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getModelAccess().getModelKeyword_0());
    }
	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getModelAccess().getEntitiesEntitiesParserRuleCall_2_0()); 
	    }
		lv_entities_2_0=ruleEntities		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getModelRule());
	        }
       		add(
       			$current, 
       			"entities",
        		lv_entities_2_0, 
        		"Entities");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_3='}' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_3());
    }
)
;





// Entry rule entryRuleComment
entryRuleComment returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCommentRule()); }
	 iv_ruleComment=ruleComment 
	 { $current=$iv_ruleComment.current; } 
	 EOF 
;

// Rule Comment
ruleComment returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_COMMENTS
		{
			newLeafNode(lv_value_0_0, grammarAccess.getCommentAccess().getValueCOMMENTSTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getCommentRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"COMMENTS");
	    }

)
)
;





// Entry rule entryRuleEntities
entryRuleEntities returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEntitiesRule()); }
	 iv_ruleEntities=ruleEntities 
	 { $current=$iv_ruleEntities.current; } 
	 EOF 
;

// Rule Entities
ruleEntities returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getEntitiesAccess().getEntityParserRuleCall_0()); 
    }
    this_Entity_0=ruleEntity
    { 
        $current = $this_Entity_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getEntitiesAccess().getEnumParserRuleCall_1()); 
    }
    this_Enum_1=ruleEnum
    { 
        $current = $this_Enum_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleEnum
entryRuleEnum returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEnumRule()); }
	 iv_ruleEnum=ruleEnum 
	 { $current=$iv_ruleEnum.current; } 
	 EOF 
;

// Rule Enum
ruleEnum returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@enum' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getEnumAccess().getEnumKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getEnumAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEnumRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getEnumAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		lv_features_3_0=RULE_ID
		{
			newLeafNode(lv_features_3_0, grammarAccess.getEnumAccess().getFeaturesIDTerminalRuleCall_3_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEnumRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"features",
        		lv_features_3_0, 
        		"ID");
	    }

)
)+	otherlv_4='}' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getEnumAccess().getRightCurlyBracketKeyword_4());
    }
)
;





// Entry rule entryRuleEntity
entryRuleEntity returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEntityRule()); }
	 iv_ruleEntity=ruleEntity 
	 { $current=$iv_ruleEntity.current; } 
	 EOF 
;

// Rule Entity
ruleEntity returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@entity' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getEntityAccess().getEntityKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getEntityRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getEntityAccess().getFeaturesFeatureParserRuleCall_3_0()); 
	    }
		lv_features_3_0=ruleFeature		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getEntityRule());
	        }
       		add(
       			$current, 
       			"features",
        		lv_features_3_0, 
        		"Feature");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_4='}' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_4());
    }
)
;





// Entry rule entryRuleFeature
entryRuleFeature returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFeatureRule()); }
	 iv_ruleFeature=ruleFeature 
	 { $current=$iv_ruleFeature.current; } 
	 EOF 
;

// Rule Feature
ruleFeature returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getFeatureAccess().getFeatureCommentCommentParserRuleCall_0_0()); 
	    }
		lv_featureComment_0_0=ruleComment		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFeatureRule());
	        }
       		add(
       			$current, 
       			"featureComment",
        		lv_featureComment_0_0, 
        		"Comment");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getFeatureAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getFeatureRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2=':' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getFeatureAccess().getColonKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getFeatureAccess().getTypeFeatureTypeParserRuleCall_3_0()); 
	    }
		lv_type_3_0=ruleFeatureType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFeatureRule());
	        }
       		set(
       			$current, 
       			"type",
        		lv_type_3_0, 
        		"FeatureType");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleFeatureType
entryRuleFeatureType returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFeatureTypeRule()); }
	 iv_ruleFeatureType=ruleFeatureType 
	 { $current=$iv_ruleFeatureType.current; } 
	 EOF 
;

// Rule FeatureType
ruleFeatureType returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getFeatureTypeAccess().getEntitiesFeatureParserRuleCall_0()); 
    }
    this_EntitiesFeature_0=ruleEntitiesFeature
    { 
        $current = $this_EntitiesFeature_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getFeatureTypeAccess().getPrimitiveFeatureParserRuleCall_1()); 
    }
    this_PrimitiveFeature_1=rulePrimitiveFeature
    { 
        $current = $this_PrimitiveFeature_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getFeatureTypeAccess().getGenericListFeatureParserRuleCall_2()); 
    }
    this_GenericListFeature_2=ruleGenericListFeature
    { 
        $current = $this_GenericListFeature_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleEntitiesFeature
entryRuleEntitiesFeature returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEntitiesFeatureRule()); }
	 iv_ruleEntitiesFeature=ruleEntitiesFeature 
	 { $current=$iv_ruleEntitiesFeature.current; } 
	 EOF 
;

// Rule EntitiesFeature
ruleEntitiesFeature returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getEntitiesFeatureRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getEntitiesFeatureAccess().getTypeEntitiesCrossReference_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRulePrimitiveFeature
entryRulePrimitiveFeature returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPrimitiveFeatureRule()); }
	 iv_rulePrimitiveFeature=rulePrimitiveFeature 
	 { $current=$iv_rulePrimitiveFeature.current; } 
	 EOF 
;

// Rule PrimitiveFeature
rulePrimitiveFeature returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getPrimitiveFeatureAccess().getTypePrimitiveTypeEnumRuleCall_0()); 
	    }
		lv_type_0_0=rulePrimitiveType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPrimitiveFeatureRule());
	        }
       		set(
       			$current, 
       			"type",
        		lv_type_0_0, 
        		"PrimitiveType");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleGenericListFeature
entryRuleGenericListFeature returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getGenericListFeatureRule()); }
	 iv_ruleGenericListFeature=ruleGenericListFeature 
	 { $current=$iv_ruleGenericListFeature.current; } 
	 EOF 
;

// Rule GenericListFeature
ruleGenericListFeature returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@List' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getGenericListFeatureAccess().getListKeyword_0());
    }
	otherlv_1='<' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getGenericListFeatureAccess().getLessThanSignKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getGenericListFeatureAccess().getTypeFeatureTypeParserRuleCall_2_0()); 
	    }
		lv_type_2_0=ruleFeatureType		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getGenericListFeatureRule());
	        }
       		set(
       			$current, 
       			"type",
        		lv_type_2_0, 
        		"FeatureType");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='>' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getGenericListFeatureAccess().getGreaterThanSignKeyword_3());
    }
)
;





// Entry rule entryRuleExceptions
entryRuleExceptions returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getExceptionsRule()); }
	 iv_ruleExceptions=ruleExceptions 
	 { $current=$iv_ruleExceptions.current; } 
	 EOF 
;

// Rule Exceptions
ruleExceptions returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@exceptions' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getExceptionsAccess().getExceptionsKeyword_0());
    }
	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getExceptionsAccess().getLeftCurlyBracketKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getExceptionsAccess().getExceptionsExceptionParserRuleCall_2_0()); 
	    }
		lv_exceptions_2_0=ruleException		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getExceptionsRule());
	        }
       		add(
       			$current, 
       			"exceptions",
        		lv_exceptions_2_0, 
        		"Exception");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_3='}' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getExceptionsAccess().getRightCurlyBracketKeyword_3());
    }
)
;





// Entry rule entryRuleException
entryRuleException returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getExceptionRule()); }
	 iv_ruleException=ruleException 
	 { $current=$iv_ruleException.current; } 
	 EOF 
;

// Rule Exception
ruleException returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@exception' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getExceptionAccess().getExceptionKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getExceptionAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getExceptionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getExceptionAccess().getLeftCurlyBracketKeyword_2());
    }
	otherlv_3='@msg' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getExceptionAccess().getMsgKeyword_3());
    }
	otherlv_4=':' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getExceptionAccess().getColonKeyword_4());
    }
(
(
		lv_msg_5_0=RULE_STRING
		{
			newLeafNode(lv_msg_5_0, grammarAccess.getExceptionAccess().getMsgSTRINGTerminalRuleCall_5_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getExceptionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"msg",
        		lv_msg_5_0, 
        		"STRING");
	    }

)
)	otherlv_6='}' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getExceptionAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Entry rule entryRuleService
entryRuleService returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getServiceRule()); }
	 iv_ruleService=ruleService 
	 { $current=$iv_ruleService.current; } 
	 EOF 
;

// Rule Service
ruleService returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@service' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getServiceAccess().getServiceKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getServiceAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getServiceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getServiceAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getServiceAccess().getOperationsOperationParserRuleCall_3_0()); 
	    }
		lv_operations_3_0=ruleOperation		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getServiceRule());
	        }
       		add(
       			$current, 
       			"operations",
        		lv_operations_3_0, 
        		"Operation");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_4='}' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getServiceAccess().getRightCurlyBracketKeyword_4());
    }
)
;





// Entry rule entryRuleOperation
entryRuleOperation returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOperationRule()); }
	 iv_ruleOperation=ruleOperation 
	 { $current=$iv_ruleOperation.current; } 
	 EOF 
;

// Rule Operation
ruleOperation returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@operation' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getOperationAccess().getOperationKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOperationRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getOperationAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		lv_authenticated_3_0=	'@authenticated' 
    {
        newLeafNode(lv_authenticated_3_0, grammarAccess.getOperationAccess().getAuthenticatedAuthenticatedKeyword_3_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOperationRule());
	        }
       		setWithLastConsumed($current, "authenticated", true, "@authenticated");
	    }

)
)?(	otherlv_4='@input' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getOperationAccess().getInputKeyword_4_0());
    }
	otherlv_5=':' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getOperationAccess().getColonKeyword_4_1());
    }
	otherlv_6='{' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getOperationAccess().getLeftCurlyBracketKeyword_4_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getOperationAccess().getFeaturesInputFeatureParserRuleCall_4_3_0()); 
	    }
		lv_featuresInput_7_0=ruleFeature		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getOperationRule());
	        }
       		add(
       			$current, 
       			"featuresInput",
        		lv_featuresInput_7_0, 
        		"Feature");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getOperationAccess().getRightCurlyBracketKeyword_4_4());
    }
)?(	otherlv_9='@output' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getOperationAccess().getOutputKeyword_5_0());
    }
	otherlv_10=':' 
    {
    	newLeafNode(otherlv_10, grammarAccess.getOperationAccess().getColonKeyword_5_1());
    }
	otherlv_11='{' 
    {
    	newLeafNode(otherlv_11, grammarAccess.getOperationAccess().getLeftCurlyBracketKeyword_5_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getOperationAccess().getFeaturesOutputFeatureParserRuleCall_5_3_0()); 
	    }
		lv_featuresOutput_12_0=ruleFeature		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getOperationRule());
	        }
       		add(
       			$current, 
       			"featuresOutput",
        		lv_featuresOutput_12_0, 
        		"Feature");
	        afterParserOrEnumRuleCall();
	    }

)
)+	otherlv_13='}' 
    {
    	newLeafNode(otherlv_13, grammarAccess.getOperationAccess().getRightCurlyBracketKeyword_5_4());
    }
)?(	otherlv_14='@exception' 
    {
    	newLeafNode(otherlv_14, grammarAccess.getOperationAccess().getExceptionKeyword_6_0());
    }
	otherlv_15=':' 
    {
    	newLeafNode(otherlv_15, grammarAccess.getOperationAccess().getColonKeyword_6_1());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getOperationRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getOperationAccess().getExceptiontsExceptionCrossReference_6_2_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_17=',' 
    {
    	newLeafNode(otherlv_17, grammarAccess.getOperationAccess().getCommaKeyword_6_3_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getOperationRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getOperationAccess().getExceptiontsExceptionCrossReference_6_3_1_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
))*)?	otherlv_19='}' 
    {
    	newLeafNode(otherlv_19, grammarAccess.getOperationAccess().getRightCurlyBracketKeyword_7());
    }
)
;





// Rule PrimitiveType
rulePrimitiveType returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='@String' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getStringEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getPrimitiveTypeAccess().getStringEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='@Short' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getShortEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getPrimitiveTypeAccess().getShortEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='@Integer' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getIntegerEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getPrimitiveTypeAccess().getIntegerEnumLiteralDeclaration_2()); 
    }
)
    |(	enumLiteral_3='@Long' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getLongEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_3, grammarAccess.getPrimitiveTypeAccess().getLongEnumLiteralDeclaration_3()); 
    }
)
    |(	enumLiteral_4='@Float' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getFloatEnumLiteralDeclaration_4().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_4, grammarAccess.getPrimitiveTypeAccess().getFloatEnumLiteralDeclaration_4()); 
    }
)
    |(	enumLiteral_5='@Double' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getDoubleEnumLiteralDeclaration_5().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_5, grammarAccess.getPrimitiveTypeAccess().getDoubleEnumLiteralDeclaration_5()); 
    }
)
    |(	enumLiteral_6='@Boolean' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getBooleanEnumLiteralDeclaration_6().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_6, grammarAccess.getPrimitiveTypeAccess().getBooleanEnumLiteralDeclaration_6()); 
    }
)
    |(	enumLiteral_7='@Byte' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getByteEnumLiteralDeclaration_7().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_7, grammarAccess.getPrimitiveTypeAccess().getByteEnumLiteralDeclaration_7()); 
    }
)
    |(	enumLiteral_8='@Date' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getDateEnumLiteralDeclaration_8().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_8, grammarAccess.getPrimitiveTypeAccess().getDateEnumLiteralDeclaration_8()); 
    }
)
    |(	enumLiteral_9='@Datetime' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getDatetimeEnumLiteralDeclaration_9().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_9, grammarAccess.getPrimitiveTypeAccess().getDatetimeEnumLiteralDeclaration_9()); 
    }
)
    |(	enumLiteral_10='@Timestamp' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getTimestampEnumLiteralDeclaration_10().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_10, grammarAccess.getPrimitiveTypeAccess().getTimestampEnumLiteralDeclaration_10()); 
    }
)
    |(	enumLiteral_11='@Decimal' 
	{
        $current = grammarAccess.getPrimitiveTypeAccess().getDecimalEnumLiteralDeclaration_11().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_11, grammarAccess.getPrimitiveTypeAccess().getDecimalEnumLiteralDeclaration_11()); 
    }
));



RULE_COMMENTS : '#' '^'? ('a'..'z'|'A'..'Z'|'_'|' ') ('a'..'z'|'A'..'Z'|'_'|'0'..'9'|' ')*;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


