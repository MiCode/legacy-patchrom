.class Lcom/android/phone/CityIdInfo$1;
.super Landroid/content/AsyncQueryHandler;
.source "CityIdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/phone/CityIdInfo$OnQueryCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CityIdInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/CityIdInfo;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const-string v4, "CityIdInfo"

    .line 253
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CityIdInfo;->access$002(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CityIdInfo;->access$102(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    const/4 v3, 0x4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CityIdInfo;->access$202(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/phone/CityIdInfo;->access$302(Lcom/android/phone/CityIdInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    const-string v2, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "City   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    #getter for: Lcom/android/phone/CityIdInfo;->mCityName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CityIdInfo;->access$000(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v2, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    #getter for: Lcom/android/phone/CityIdInfo;->mStateName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CityIdInfo;->access$100(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v2, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ST     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    #getter for: Lcom/android/phone/CityIdInfo;->mStateAbrv:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CityIdInfo;->access$200(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v2, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    #getter for: Lcom/android/phone/CityIdInfo;->mCountryName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/CityIdInfo;->access$300(Lcom/android/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/android/phone/CityIdInfo$1;->this$0:Lcom/android/phone/CityIdInfo;

    const/4 v3, 0x6

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    #setter for: Lcom/android/phone/CityIdInfo;->mIsNanpNum:Z
    invoke-static {v2, v3}, Lcom/android/phone/CityIdInfo;->access$402(Lcom/android/phone/CityIdInfo;Z)Z

    .line 269
    :goto_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;

    move-object v1, v0

    .line 273
    .local v1, lsner:Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;
    if-eqz v1, :cond_1

    .line 274
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;->onCityIdQueryComplete(ILjava/lang/Object;)V

    .line 276
    :cond_1
    return-void

    .line 263
    .end local v1           #lsner:Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 267
    :cond_3
    const-string v2, "CityIdInfo"

    const-string v2, "No CityID found"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
