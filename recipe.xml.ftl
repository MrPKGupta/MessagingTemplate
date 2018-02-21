<?xml version="1.0"?>
<recipe>
	<#if !(hasDependency('com.android.support:recyclerview-v7'))>
        <dependency mavenUrl="com.android.support:recyclerview-v7:26.1.0"/>
    </#if>
	
	<#if !(hasDependency('com.google.guava:guava'))>
        <dependency mavenUrl="com.google.guava:guava:18.0"/>
    </#if>
	
	<merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
			 
	<merge from="res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
	
	<merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
			 
	<instantiate from="res/layout/activity_messaging.xml.ftl"
					to="${escapeXmlAttribute(resOut)}/layout/${msgActivityLayoutName}.xml" />
					
	<instantiate from="res/layout/fragment_messaging.xml.ftl"
					to="${escapeXmlAttribute(resOut)}/layout/${msgFragmentLayoutName}.xml" />
					
	<instantiate from="res/layout/item_message_received.xml.ftl"
			to="${escapeXmlAttribute(resOut)}/layout/item_message_received.xml" />
			
	<instantiate from="res/layout/item_message_sent.xml.ftl"
			to="${escapeXmlAttribute(resOut)}/layout/item_message_sent.xml" />
			
	<instantiate from="src/app_package/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
			 
	<instantiate from="src/app_package/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseView.java" />
				   
    <instantiate from="src/app_package/messaging/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packageExtension}/${msgActivityName}.java" />
				   
	<instantiate from="src/app_package/messaging/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packageExtension}/${msgContractName}.java" />
				   
	<instantiate from="src/app_package/messaging/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packageExtension}/${msgFragmentName}.java" />
				   
	<instantiate from="src/app_package/messaging/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packageExtension}/${msgPresenterName}.java" />
				   
	<instantiate from="src/app_package/messaging/adapter/Adapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packageExtension}/adapter/${msgModelName}Adapter.java" />
				   
	<instantiate from="src/app_package/messaging/model/Message.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${packageExtension}/model/${msgModelName}.java" />
				   
	<instantiate from="src/app_package/util/ActivityUtils.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/ActivityUtils.java" />
				   
	<open file="${srcOut}/${packageExtension}/${msgPresenterName}.java"/>
				   
	<copy from="res/drawable/bg_et_message.xml"
			to="${escapeXmlAttribute(resOut)}/drawable/bg_et_message.xml" />
			
	<copy from="res/drawable/bg_send_button.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/bg_send_button.xml" />
			
	<copy from="res/drawable-hdpi/balloon_incoming_normal.9.png"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi/balloon_incoming_normal.9.png" />
			
	<copy from="res/drawable-hdpi/balloon_outgoing_normal.9.png"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi/balloon_outgoing_normal.9.png" />
			
	<copy from="res/drawable-hdpi/ic_send.png"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi/ic_send.png" />
			
	<copy from="res/drawable-mdpi/ic_send.png"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi/ic_send.png" />
			
	<copy from="res/drawable-xhdpi/balloon_incoming_normal.9.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi/balloon_incoming_normal.9.png" />
			
	<copy from="res/drawable-xhdpi/balloon_outgoing_normal.9.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi/balloon_outgoing_normal.9.png" />
			
	<copy from="res/drawable-xhdpi/ic_send.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi/ic_send.png" />
			
	<copy from="res/drawable-xxhdpi/balloon_incoming_normal.9.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi/balloon_incoming_normal.9.png" />
			
	<copy from="res/drawable-xxhdpi/balloon_outgoing_normal.9.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi/balloon_outgoing_normal.9.png" />
			
	<copy from="res/drawable-xxhdpi/ic_send.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi/ic_send.png" />
			
	<copy from="res/drawable-xxxhdpi/ic_send.png"
            to="${escapeXmlAttribute(resOut)}/drawable-xxxhdpi/ic_send.png" />
	
	
			 
</recipe>