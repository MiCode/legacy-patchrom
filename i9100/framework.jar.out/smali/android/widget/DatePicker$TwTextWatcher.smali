.class public Landroid/widget/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;IIZ)V
    .locals 2
    .parameter
    .parameter "maxLen"
    .parameter "id"
    .parameter "month"

    .prologue
    .line 683
    iput-object p1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput p2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    .line 685
    iput p3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    .line 686
    iput-boolean p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    .line 688
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 689
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 691
    :cond_0
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    .line 692
    return-void

    .line 691
    :cond_1
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 3

    .prologue
    .line 771
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changeFocus() is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 773
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v0, :cond_1

    .line 774
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 778
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 782
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 695
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 696
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

    .line 699
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 701
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const-string v5, "] "

    const-string v4, "["

    .line 704
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 707
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 708
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 709
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 768
    :cond_1
    :goto_0
    return-void

    .line 726
    :cond_2
    iget-boolean v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_4

    .line 727
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->isNumMonth:Z
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1100(Landroid/widget/DatePicker;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Samsung Keypad Num Month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 730
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 731
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 755
    :cond_3
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 756
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_1

    .line 757
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 762
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_1

    .line 763
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
