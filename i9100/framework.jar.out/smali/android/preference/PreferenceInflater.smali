.class Landroid/preference/PreferenceInflater;
.super Landroid/preference/GenericInflater;
.source "PreferenceInflater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/GenericInflater",
        "<",
        "Landroid/preference/Preference;",
        "Landroid/preference/PreferenceGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTENT_TAG_NAME:Ljava/lang/String; = "intent"

.field private static final TAG:Ljava/lang/String; = "PreferenceInflater"


# instance fields
.field private mPreferenceManager:Landroid/preference/PreferenceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V
    .locals 0
    .parameter "context"
    .parameter "preferenceManager"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/preference/GenericInflater;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "preferenceManager"
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;",
            "Landroid/preference/PreferenceManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, original:Landroid/preference/GenericInflater;,"Landroid/preference/GenericInflater<Landroid/preference/Preference;Landroid/preference/PreferenceGroup;>;"
    invoke-direct {p0, p1, p3}, Landroid/preference/GenericInflater;-><init>(Landroid/preference/GenericInflater;Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p2}, Landroid/preference/PreferenceInflater;->init(Landroid/preference/PreferenceManager;)V

    .line 53
    return-void
.end method

.method private init(Landroid/preference/PreferenceManager;)V
    .locals 1
    .parameter "preferenceManager"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 62
    const-string v0, "android.preference."

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceInflater;->setDefaultPackage(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/preference/GenericInflater;
    .locals 2
    .parameter "newContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/preference/GenericInflater",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Landroid/preference/PreferenceInflater;

    iget-object v1, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-direct {v0, p0, v1, p1}, Landroid/preference/PreferenceInflater;-><init>(Landroid/preference/GenericInflater;Landroid/preference/PreferenceManager;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z
    .locals 5
    .parameter "parser"
    .parameter "parentPreference"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const-string v4, "PreferenceInflater"

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, tag:Ljava/lang/String;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    const/4 v1, 0x0

    .line 74
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 84
    :cond_0
    const/4 v3, 0x1

    .line 87
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v3

    .line 75
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PreferenceInflater"

    const-string v3, "Could not parse Intent."

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v3, "PreferenceInflater"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 39
    check-cast p2, Landroid/preference/Preference;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onMergeRoots(Landroid/preference/GenericInflater$Parent;ZLandroid/preference/GenericInflater$Parent;)Landroid/preference/GenericInflater$Parent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    check-cast p1, Landroid/preference/PreferenceGroup;

    .end local p1
    check-cast p3, Landroid/preference/PreferenceGroup;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Landroid/preference/PreferenceInflater;->onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Landroid/preference/PreferenceGroup;ZLandroid/preference/PreferenceGroup;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "givenRoot"
    .parameter "attachToGivenRoot"
    .parameter "xmlRoot"

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/preference/PreferenceInflater;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p3, v0}, Landroid/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    move-object v0, p3

    .line 99
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
