.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$NumberRangeKeyListener;,
        Landroid/widget/NumberPicker$NumberPickerInputFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Landroid/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Landroid/widget/NumberPickerButton;

.field private mListener:Landroid/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/widget/NumberPicker$1;

    invoke-direct {v0}, Landroid/widget/NumberPicker$1;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    .line 496
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

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
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance v5, Landroid/widget/NumberPicker$2;

    invoke-direct {v5, p0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 129
    const-wide/16 v5, 0x12c

    iput-wide v5, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 149
    invoke-virtual {p0, v8}, Landroid/widget/NumberPicker;->setOrientation(I)V

    .line 150
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 152
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1090047

    invoke-virtual {v2, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Landroid/widget/NumberPicker$3;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    .line 170
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    new-instance v1, Landroid/widget/NumberPicker$4;

    invoke-direct {v1, p0}, Landroid/widget/NumberPicker$4;-><init>(Landroid/widget/NumberPicker;)V

    .line 191
    .local v1, focusListener:Landroid/view/View$OnFocusChangeListener;
    new-instance v4, Landroid/widget/NumberPicker$5;

    invoke-direct {v4, p0}, Landroid/widget/NumberPicker$5;-><init>(Landroid/widget/NumberPicker;)V

    .line 214
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    new-instance v3, Landroid/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v3, p0, v9}, Landroid/widget/NumberPicker$NumberPickerInputFilter;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    .line 215
    .local v3, inputFilter:Landroid/text/InputFilter;
    new-instance v5, Landroid/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v5, p0, v9}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V

    iput-object v5, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 216
    const v5, 0x1020225

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    .line 217
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 219
    iget-object v5, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 221
    const v5, 0x1020227

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerButton;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    .line 222
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, v4}, Landroid/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    iget-object v5, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerButton;->setNumberPicker(Landroid/widget/NumberPicker;)V

    .line 226
    const v5, 0x1020226

    invoke-virtual {p0, v5}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 227
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v6, v8, [Landroid/text/InputFilter;

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 229
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 231
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/high16 v6, -0x8000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 232
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-instance v6, Landroid/widget/NumberPicker$6;

    invoke-direct {v6, p0}, Landroid/widget/NumberPicker$6;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 240
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    invoke-virtual {p0, v7}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 254
    :cond_0
    iget-object v5, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->showCursorController(Z)V

    .line 255
    return-void
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1400()[C
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->checkFilterValue(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$500(Landroid/widget/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/NumberPicker;)Landroid/widget/NumberPickerButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkFilterValue(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "filtered"
    .parameter "result"

    .prologue
    .line 591
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 592
    .local v0, inputStringSize:I
    iget v2, p0, Landroid/widget/NumberPicker;->mEnd:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 594
    .local v1, maxSize:I
    if-le v0, v1, :cond_0

    .line 595
    const-string v2, ""

    .line 597
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 600
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 602
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 625
    :goto_0
    return v1

    .line 607
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 609
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 610
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 607
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 619
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 603
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 625
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    goto :goto_0

    .line 620
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/NumberPicker$OnChangedListener;->onChanged(Landroid/widget/NumberPicker;II)V

    .line 427
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 446
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iget v3, p0, Landroid/widget/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, val:I
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 461
    :cond_0
    iget v1, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_1

    .line 462
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 463
    iput v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 464
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 466
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    goto :goto_0
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 470
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrement:Z

    .line 494
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrement:Z

    .line 487
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 406
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 407
    iget p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 411
    :cond_0
    :goto_0
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Landroid/widget/NumberPicker;->mPrevious:I

    .line 412
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 413
    invoke-direct {p0}, Landroid/widget/NumberPicker;->notifyChange()V

    .line 414
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 415
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 416
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 417
    return-void

    .line 408
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 409
    iget p1, p0, Landroid/widget/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method protected getBeginRange()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    return v0
.end method

.method public getCurrent()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method protected getEndRange()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method public getMText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 363
    iget v0, p0, Landroid/widget/NumberPicker;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current should be >= start and <= end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrent:I

    if-ne v0, p1, :cond_2

    if-eqz p1, :cond_2

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_2
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 375
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 286
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerButton;->setEnabled(Z)V

    .line 287
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 288
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 307
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 308
    return-void
.end method

.method public setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 298
    iput-object p1, p0, Landroid/widget/NumberPicker;->mListener:Landroid/widget/NumberPicker$OnChangedListener;

    .line 299
    return-void
.end method

.method public setRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 331
    iput-object p3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 332
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 333
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 334
    iput p1, p0, Landroid/widget/NumberPicker;->mCurrent:I

    .line 335
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateView()V

    .line 337
    if-eqz p3, :cond_0

    .line 339
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 386
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mSpeed:J

    .line 387
    return-void
.end method

.method public setStringMode(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 291
    return-void

    .line 290
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public twSetMaxInputLength(I)V
    .locals 6
    .parameter "limit"

    .prologue
    const/4 v5, 0x0

    .line 262
    iget-object v3, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 263
    .local v1, filterArr:[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 264
    .local v0, backupFilter:Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 265
    .local v2, lengthFilter:Landroid/text/InputFilter;
    iget-object v3, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 266
    return-void
.end method

.method public twSetMonthInputMode()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 272
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroid/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public twSetRange(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 351
    iput p1, p0, Landroid/widget/NumberPicker;->mStart:I

    .line 352
    iput p2, p0, Landroid/widget/NumberPicker;->mEnd:I

    .line 353
    return-void
.end method
