.class public Lcom/broadcom/bt/preference/SharedPreferenceMapper;
.super Ljava/lang/Object;
.source "SharedPreferenceMapper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "defaultListener"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, v0, p1}, Lcom/broadcom/bt/preference/SharedPreferenceMapper;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter "defaultListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;",
            ">;",
            "Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, prefMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/preference/Preference;>;"
    .local p2, listnerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 40
    iput-object p2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    .line 41
    iput-object p3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    .line 42
    return-void
.end method


# virtual methods
.method public addToMap(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public getPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .parameter "key"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/preference/Preference;

    move-object v0, p0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPref"
    .parameter "key"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 109
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 110
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    .line 113
    .local v0, listener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;
    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0, v1, p2, p1}, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/preference/Preference;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 125
    .end local v0           #listener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    invoke-interface {v2, v1, p2, p1}, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/preference/Preference;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public registerPreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 69
    return-void
.end method

.method public registerPreference(Landroid/preference/Preference;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V
    .locals 4
    .parameter "pref"
    .parameter "listener"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 80
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    .line 84
    .local v1, prevListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;
    if-nez v1, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 87
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    .end local v2           #sharedPref:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method public removeFromMap(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method

.method public unregisterPreference(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 92
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 93
    .local v0, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    .end local v1           #sharedPref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
