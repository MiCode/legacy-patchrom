.class Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "DTMFTwelveKeyDialerForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 198
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 369
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 199
    return-void

    .line 369
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    return-void
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v4, "\' from input."

    .line 242
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 245
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 251
    .local v1, keyOK:Z
    if-eqz v1, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener reading \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->processDtmf(C)V
    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$100(Lcom/android/phone/DTMFTwelveKeyDialerForVT;C)V

    .line 257
    :goto_0
    const/4 v2, 0x1

    .line 259
    .end local v1           #keyOK:Z
    :goto_1
    return v2

    .line 255
    .restart local v1       #keyOK:Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener rejecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v1           #keyOK:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 274
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    .line 276
    .local v0, c:C
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->ok([CC)Z

    move-result v1

    .line 278
    .local v1, keyOK:Z
    if-eqz v1, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->stopTone()V
    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$200(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V

    .line 281
    const/4 v2, 0x1

    .line 284
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
