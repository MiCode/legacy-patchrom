.class public Landroid/bluetooth/AtCommandResult;
.super Ljava/lang/Object;
.source "AtCommandResult.java"


# static fields
.field public static final ERROR:I = 0x1

.field private static final ERROR_STRING:Ljava/lang/String; = "ERROR"

.field public static final OK:I = 0x0

.field private static final OK_STRING:Ljava/lang/String; = "OK"

.field public static final UNSOLICITED:I = 0x2


# instance fields
.field private mResponse:Ljava/lang/StringBuilder;

.field private mResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "resultCode"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/AtCommandResult;->mResultCode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtCommandResult;->mResponse:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    return-void
.end method

.method public static appendWithCrlf(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .parameter "str1"
    .parameter "str2"

    .prologue
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\r\n\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "response"

    .prologue
    iget-object v0, p0, Landroid/bluetooth/AtCommandResult;->mResponse:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Landroid/bluetooth/AtCommandResult;->appendWithCrlf(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public addResult(Landroid/bluetooth/AtCommandResult;)V
    .locals 2
    .parameter "result"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/bluetooth/AtCommandResult;->mResponse:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/bluetooth/AtCommandResult;->mResponse:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/AtCommandResult;->appendWithCrlf(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v0, p1, Landroid/bluetooth/AtCommandResult;->mResultCode:I

    iput v0, p0, Landroid/bluetooth/AtCommandResult;->mResultCode:I

    :cond_0
    return-void
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/bluetooth/AtCommandResult;->mResultCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/AtCommandResult;->mResponse:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, result:Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/bluetooth/AtCommandResult;->mResultCode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, "OK"

    invoke-static {v0, v1}, Landroid/bluetooth/AtCommandResult;->appendWithCrlf(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/bluetooth/AtCommandResult;->appendWithCrlf(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
