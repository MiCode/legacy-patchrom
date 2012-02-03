.class public Lcom/android/internal/telephony/gsm/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"


# instance fields
.field private CarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SpnOverride;->loadSpnOverrides()V

    .line 63
    return-void
.end method

.method private loadSpnOverrides()V
    .locals 13

    .prologue
    const-string v4, "etc/spn-conf.xml"

    const-string v0, "Exception in spn-conf parser "

    const-string v3, "GSM"

    .line 117
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/spn-conf.xml"

    invoke-direct {v10, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v10, spnFile:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v11, spnReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 130
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 132
    const-string/jumbo v0, "spnOverrides"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 137
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, name:Ljava/lang/String;
    const-string/jumbo v0, "spnOverride"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    if-nez v0, :cond_1

    .line 160
    if-eqz v11, :cond_0

    .line 161
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 167
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #spnReader:Ljava/io/FileReader;
    :cond_0
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 123
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "etc/spn-conf.xml"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #spnReader:Ljava/io/FileReader;
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    const-string/jumbo v1, "numeric"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, numeric:Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "spn"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, data:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    const/4 v1, 0x0

    const-string/jumbo v3, "spn_display_rule"

    invoke-interface {v9, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-string/jumbo v4, "spn_override_only_on"

    invoke-interface {v9, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const-string v5, "fake_home_on"

    invoke-interface {v9, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;-><init>(Lcom/android/internal/telephony/gsm/SpnOverride;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 154
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #numeric:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 155
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in spn-conf parser "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    if-eqz v11, :cond_0

    .line 161
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 163
    :catch_2
    move-exception v0

    goto :goto_1

    .line 156
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 157
    .local v6, e:Ljava/io/IOException;
    :try_start_6
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in spn-conf parser "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    if-eqz v11, :cond_0

    .line 161
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 163
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 159
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 160
    if-eqz v11, :cond_2

    .line 161
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 165
    :cond_2
    :goto_2
    throw v0

    .line 163
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .end local v7           #name:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "carrier"

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    .line 77
    .local v1, rule:Ljava/lang/String;
    const/4 v0, 0x0

    .line 79
    .local v0, result:I
    if-eqz v1, :cond_2

    .line 80
    const-string v2, "SPN_RULE_SHOW_SPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    const-string v2, "SPN_RULE_SHOW_PLMN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    add-int/lit8 v0, v0, 0x2

    .line 90
    :cond_1
    :goto_0
    return v0

    .line 87
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getFakeHomeOn(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_home_on:Ljava/lang/String;

    .line 106
    .local v0, fho:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getOverrideOnlyOn(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "carrier"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_override_only_on:Ljava/lang/String;

    .line 96
    .local v0, sooo:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride;->CarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    return-object v0
.end method
