.class Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;
.super Ljava/lang/Object;
.source "ManageConferenceUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceCallItem"
.end annotation


# instance fields
.field private conn:Lcom/android/internal/telephony/Connection;

.field private image:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUi;


# direct methods
.method public constructor <init>(Lcom/android/phone/ManageConferenceUi;Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter
    .parameter "conn"

    .prologue
    const v5, 0x7f02011d

    .line 176
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->this$0:Lcom/android/phone/ManageConferenceUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    .line 178
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, o:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 180
    .local v1, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v4, v2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v4, :cond_3

    .line 181
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v1, v0

    .line 185
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 186
    .local v3, presentation:I
    if-eqz v1, :cond_7

    .line 187
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    .line 188
    iget-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/android/phone/ManageConferenceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    .line 191
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 192
    :cond_2
    #getter for: Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/ManageConferenceUi;->access$300(Lcom/android/phone/ManageConferenceUi;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0180

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    .line 207
    :goto_1
    return-void

    .line 182
    .end local v3           #presentation:I
    .restart local v2       #o:Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_0

    .line 183
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v2           #o:Ljava/lang/Object;
    iget-object v1, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 194
    .restart local v3       #presentation:I
    :cond_4
    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_5

    .line 195
    #calls: Lcom/android/phone/ManageConferenceUi;->getPresentationString(I)Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/phone/ManageConferenceUi;->access$400(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_5
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 197
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1

    .line 199
    :cond_6
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_7
    invoke-virtual {p1}, Lcom/android/phone/ManageConferenceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    .line 204
    #calls: Lcom/android/phone/ManageConferenceUi;->getPresentationString(I)Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/phone/ManageConferenceUi;->access$400(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public endConnection()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 216
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splitConnection()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 219
    return-void
.end method
