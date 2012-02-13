.class Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaSystemSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_ROAMING_PREFERENCE:I = 0x0

.field private static final MESSAGE_SET_ROAMING_PREFERENCE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaSystemSelectListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const-string v8, "roaming_settings"

    const-string v7, "CdmaRoamingListPreference"

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 173
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 174
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v3, v4, v6

    .line 175
    .local v3, statusCdmaRoamingMode:I
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 179
    .local v2, settingsRoamingMode:I
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$200(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$300(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$200(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$300(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    if-eqz v3, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 185
    :cond_2
    if-eq v3, v2, :cond_3

    .line 186
    move v2, v3

    .line 188
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    invoke-static {v4, v8, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    .end local v2           #settingsRoamingMode:I
    .end local v3           #statusCdmaRoamingMode:I
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    const/4 v5, 0x1

    #setter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mHandled:Z
    invoke-static {v4, v5}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$402(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z

    .line 203
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mShowDialogLater:Z
    invoke-static {v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$500(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #setter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mShowDialogLater:Z
    invoke-static {v4, v6}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$502(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z

    .line 211
    :cond_5
    return-void

    .line 197
    .restart local v2       #settingsRoamingMode:I
    .restart local v3       #statusCdmaRoamingMode:I
    :cond_6
    const-string v4, "CdmaRoamingListPreference"

    const-string v4, "reset cdma roaming mode to default"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_0

    .line 206
    .end local v2           #settingsRoamingMode:I
    .end local v3           #statusCdmaRoamingMode:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 207
    .local v1, ex:Landroid/view/WindowManager$BadTokenException;
    const-string v4, "CdmaRoamingListPreference"

    const-string v4, "catch exception WindowManager.BadTokenException in showdialog"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleQueryOemCdmaPreference(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const-string v10, "CdmaRoamingListPreference"

    .line 252
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 253
    .local v1, ar:Landroid/os/AsyncResult;
    if-nez v1, :cond_0

    .line 254
    const-string v8, "CdmaRoamingListPreference"

    const-string v8, "GET_RDE_ITEM: ar is null!"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    .line 260
    .local v6, reqId:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;
    if-nez v6, :cond_1

    .line 261
    const-string v8, "CdmaRoamingListPreference"

    const-string v8, "GET_RDE_ITEM: reqId is null!"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_6

    .line 266
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v2, v0

    .line 267
    .local v2, data:[B
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToRdeData([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v7

    .line 268
    .local v7, res:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    iget-object v4, v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 269
    .local v4, errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v5, v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    .line 270
    .local v5, rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    if-eqz v5, :cond_2

    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    if-nez v8, :cond_3

    .line 271
    :cond_2
    const-string v8, "CdmaRoamingListPreference"

    const-string v8, "response:rde = null or rde.dataObj = null"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_3
    sget-object v8, Lcom/android/phone/CdmaSystemSelectListPreference$1;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    invoke-virtual {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    check-cast v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    check-cast v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->rdeToBool(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;)Z

    move-result v8

    #setter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z
    invoke-static {v9, v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$602(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z

    .line 277
    const-string v8, "CdmaRoamingListPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getcdma_vzw_ss result: cdma_vzw_ss=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z
    invoke-static {v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$600(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z
    invoke-static {v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$600(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 280
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->oemCdmaTm:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    invoke-static {v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$800(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
    invoke-static {v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$700(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->getPrefOnlyFlag(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-result-object v3

    .line 281
    .local v3, er:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v8, "CdmaRoamingListPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPrefOnlyFlag returned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .end local v3           #er:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :cond_4
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
    invoke-static {v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$700(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 290
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    check-cast v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    check-cast v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->rdeToBool(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;)Z

    move-result v8

    #setter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z
    invoke-static {v9, v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$302(Lcom/android/phone/CdmaSystemSelectListPreference;Z)Z

    .line 291
    const-string v8, "CdmaRoamingListPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPrefonlyflag result: mPrefOnly ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z
    invoke-static {v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$300(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z
    invoke-static {v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$300(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 295
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v9, 0x7f060024

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntries(I)V

    .line 296
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v9, 0x7f060026

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntryValues(I)V

    .line 299
    :cond_5
    iget-object v8, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
    invoke-static {v9}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$700(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 305
    .end local v2           #data:[B
    .end local v4           #errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .end local v5           #rde:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    .end local v7           #res:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :cond_6
    const-string v8, "CdmaRoamingListPreference"

    const-string v8, "handleQueryOemCdmaPreference: ar.exception!=NULL"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 216
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 218
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    .end local v1           #cdmaRoamingMode:I
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetCdmaRoamingModeToDefault()V
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mEnableSysSelect:Z
    invoke-static {v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$200(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mCdmaVZWSs:Z
    invoke-static {v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$600(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPrefOnly:Z
    invoke-static {v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$300(Lcom/android/phone/CdmaSystemSelectListPreference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const/4 v0, 0x4

    .line 236
    .local v0, defaultRoamingMode:I
    :goto_0
    const-string v1, "CdmaRoamingListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set cdma roaming default mode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    iget-object v1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 248
    return-void

    .line 234
    .end local v0           #defaultRoamingMode:I
    :cond_0
    const/4 v0, 0x2

    .restart local v0       #defaultRoamingMode:I
    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 156
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 160
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleQueryOemCdmaPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2000016 -> :sswitch_2
    .end sparse-switch
.end method
