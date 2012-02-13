.class final Lcom/android/phone/PhoneUtils$6;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    const/4 v8, 0x1

    .line 1838
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "query complete, updating connection.userdata"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1839
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object v2, v0

    .line 1843
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete: CallerInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1844
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete, before set CityIdInfoMap: CallerInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1851
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 1852
    .local v4, o:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1853
    .local v5, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v6, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v6, :cond_7

    .line 1856
    check-cast v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v4           #o:Ljava/lang/Object;
    iget-object v6, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallerInfo;->getCityIdInfoMap()Ljava/util/HashMap;

    move-result-object v5

    .line 1866
    :cond_3
    :goto_0
    invoke-virtual {p3, v5}, Lcom/android/internal/telephony/CallerInfo;->setCityIdInfoMap(Ljava/util/HashMap;)V

    .line 1870
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$000()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onQueryComplete, after set CityIdInfoMap: CallerInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    .line 1873
    :cond_4
    iget-boolean v6, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v6, :cond_5

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 1890
    :cond_5
    iget v6, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-nez v6, :cond_6

    .line 1891
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    iput v6, p3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 1901
    :cond_6
    :goto_1
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 1902
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1903
    .local v1, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v1, v8, v8}, Lcom/android/phone/PhoneApp;->setUpdateScreen(ZZ)V

    .line 1904
    return-void

    .line 1858
    .end local v1           #app:Lcom/android/phone/PhoneApp;
    .restart local v4       #o:Ljava/lang/Object;
    :cond_7
    instance-of v6, v4, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_3

    .line 1860
    check-cast v4, Lcom/android/internal/telephony/CallerInfo;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallerInfo;->getCityIdInfoMap()Ljava/util/HashMap;

    move-result-object v5

    goto :goto_0

    .line 1894
    :cond_8
    const/4 v6, 0x0

    invoke-static {v6, v2}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 1895
    .local v3, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v3, :cond_6

    .line 1896
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/CallerInfo;->setCityIdInfoMap(Ljava/util/HashMap;)V

    .line 1897
    iget-object v6, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1898
    move-object p3, v3

    goto :goto_1
.end method
