.class Landroid/widget/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method private constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Landroid/widget/NumberPicker$NumberPickerInputFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$NumberPickerInputFilter;-><init>(Landroid/widget/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 17
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker$NumberPickerInputFilter;->this$0:Landroid/widget/NumberPicker;

    move-object v3, v0

    #getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker$NumberPickerInputFilter;->this$0:Landroid/widget/NumberPicker;

    move-object v3, v0

    #getter for: Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 525
    :goto_0
    return-object v3

    .line 511
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker$NumberPickerInputFilter;->this$0:Landroid/widget/NumberPicker;

    move-object v3, v0

    #getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker$NumberPickerInputFilter;->this$0:Landroid/widget/NumberPicker;

    move-object v3, v0

    #getter for: Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 514
    :cond_1
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, filtered:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v4

    move-object/from16 v0, p4

    move/from16 v1, p6

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, result:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 519
    .local v15, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPicker$NumberPickerInputFilter;->this$0:Landroid/widget/NumberPicker;

    move-object v3, v0

    #getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v10

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v16, v10, v12

    .line 520
    .local v16, val:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 521
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v11

    .line 522
    goto/16 :goto_0

    .line 519
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 525
    .end local v16           #val:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto/16 :goto_0
.end method
