.class public Landroid/widget/TimePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter
    .parameter "maxLen"
    .parameter "id"

    .prologue
    .line 447
    iput-object p1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput p2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mMaxLen:I

    .line 449
    iput p3, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    .line 451
    iget v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->mNext:I

    .line 452
    return-void

    .line 451
    :cond_0
    iget v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 3

    .prologue
    .line 483
    iget v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v0, v1, 0x2

    .line 485
    .local v0, next:I
    iget v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_0

    .line 486
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 488
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 492
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$1000(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const-string v3, ", "

    .line 459
    iget-object v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$1000(Landroid/widget/TimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const-string/jumbo v5, "onTextChanged: "

    const-string v4, "Picker"

    const-string v3, ", "

    .line 464
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1000(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextChanged: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1000(Landroid/widget/TimePicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextChanged: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 469
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 470
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 480
    :cond_3
    :goto_0
    return-void

    .line 475
    :cond_4
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    .line 476
    iget-object v1, p0, Landroid/widget/TimePicker$TwTextWatcher;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/TimePicker;->access$1100(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/TimePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    invoke-direct {p0}, Landroid/widget/TimePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0
.end method
