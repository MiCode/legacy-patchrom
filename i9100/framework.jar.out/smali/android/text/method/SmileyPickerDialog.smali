.class public Landroid/text/method/SmileyPickerDialog;
.super Landroid/app/Dialog;
.source "SmileyPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/SmileyPickerDialog$OptionsAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_SMILEYPICKERDIALOG_SHOW_STATE:Ljava/lang/String; = "android.text.method.SMILEYPICKERDIALOG_SHOW_STATE"

.field private static final INTENT_EXTRA_VISIBLE_STATE:Ljava/lang/String; = "visible"


# instance fields
.field private count:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;

.field private prePosition1:I

.field private prePosition2:I

.field private prePosition3:I

.field private prePosition4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Z)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "text"
    .parameter "insert"

    .prologue
    const/4 v2, 0x0

    .line 86
    const v1, 0x1030059

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const-string v1, ":-)#:-(#;-)#:-P#=-O#:-*#:O#B-)#:-$#:-!#:-[#O:-)#:-\\#:\'(#:-X#:-D#o_O#:-/#X-(#:-|#"

    iput-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    .line 63
    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->count:I

    .line 66
    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    .line 67
    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition2:I

    .line 68
    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition3:I

    .line 69
    iput v2, p0, Landroid/text/method/SmileyPickerDialog;->prePosition4:I

    .line 302
    new-instance v1, Landroid/text/method/SmileyPickerDialog$3;

    invoke-direct {v1, p0}, Landroid/text/method/SmileyPickerDialog$3;-><init>(Landroid/text/method/SmileyPickerDialog;)V

    iput-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p2, p0, Landroid/text/method/SmileyPickerDialog;->mView:Landroid/view/View;

    .line 89
    iput-object p3, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    .line 90
    iput-boolean p4, p0, Landroid/text/method/SmileyPickerDialog;->mInsert:Z

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    new-instance v1, Landroid/text/method/SmileyPickerDialog$1;

    invoke-direct {v1, p0}, Landroid/text/method/SmileyPickerDialog$1;-><init>(Landroid/text/method/SmileyPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/text/method/SmileyPickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 100
    new-instance v1, Landroid/text/method/SmileyPickerDialog$2;

    invoke-direct {v1, p0}, Landroid/text/method/SmileyPickerDialog$2;-><init>(Landroid/text/method/SmileyPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/text/method/SmileyPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/SmileyPickerDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/text/method/SmileyPickerDialog;->sendShowState(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/text/method/SmileyPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/text/method/SmileyPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Landroid/text/method/SmileyPickerDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/text/method/SmileyPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition2:I

    return v0
.end method

.method static synthetic access$302(Landroid/text/method/SmileyPickerDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/text/method/SmileyPickerDialog;->prePosition2:I

    return p1
.end method

.method static synthetic access$400(Landroid/text/method/SmileyPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition3:I

    return v0
.end method

.method static synthetic access$402(Landroid/text/method/SmileyPickerDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/text/method/SmileyPickerDialog;->prePosition3:I

    return p1
.end method

.method static synthetic access$500(Landroid/text/method/SmileyPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition4:I

    return v0
.end method

.method static synthetic access$502(Landroid/text/method/SmileyPickerDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/text/method/SmileyPickerDialog;->prePosition4:I

    return p1
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "replace"

    .prologue
    .line 171
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 172
    .local v0, selEnd:I
    iget-boolean v1, p0, Landroid/text/method/SmileyPickerDialog;->mInsert:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 178
    :goto_0
    invoke-virtual {p0}, Landroid/text/method/SmileyPickerDialog;->dismiss()V

    .line 179
    return-void

    .line 175
    :cond_1
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mText:Landroid/text/Editable;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private sendShowState(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.text.method.SMILEYPICKERDIALOG_SHOW_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0}, Landroid/text/method/SmileyPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method


# virtual methods
.method public countLength(I)I
    .locals 5
    .parameter "newPosition"

    .prologue
    const-string v4, "jang"

    .line 316
    iget-object v3, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 318
    .local v0, data:[C
    const/4 v2, 0x0

    .line 320
    .local v2, length:I
    move v1, p1

    .line 321
    .local v1, isPosition:I
    const-string v3, "jang"

    const-string v3, "countLength"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v3, 0x50

    if-ge v1, v3, :cond_1

    .line 325
    const-string v3, "jang"

    const-string/jumbo v3, "out of bound"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    aget-char v3, v0, v1

    const/16 v4, 0x23

    if-eq v3, v4, :cond_0

    .line 328
    add-int/lit8 v2, v2, 0x1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget v3, p0, Landroid/text/method/SmileyPickerDialog;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/text/method/SmileyPickerDialog;->count:I

    .line 338
    :cond_1
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 185
    iget-object v1, p0, Landroid/text/method/SmileyPickerDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/text/method/SmileyPickerDialog;->dismiss()V

    .line 191
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 188
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 189
    .local v0, result:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/text/method/SmileyPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroid/text/method/SmileyPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 122
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 123
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 124
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    const v2, 0x1090067

    invoke-virtual {p0, v2}, Landroid/text/method/SmileyPickerDialog;->setContentView(I)V

    .line 128
    const v2, 0x1020249

    invoke-virtual {p0, v2}, Landroid/text/method/SmileyPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 131
    .local v0, grid:Landroid/widget/GridView;
    new-instance v2, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/text/method/SmileyPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/SmileyPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/SmileyPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    const v2, 0x10201ab

    invoke-virtual {p0, v2}, Landroid/text/method/SmileyPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 137
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x7

    .line 150
    if-nez p3, :cond_0

    .line 151
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, p3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-static {v2, p3, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, result:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1}, Landroid/text/method/SmileyPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 167
    return-void

    .line 153
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    if-lt p3, v3, :cond_1

    const/16 v2, 0xb

    if-gt p3, v2, :cond_1

    .line 154
    sub-int v2, p3, v3

    iget v3, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    invoke-virtual {p0, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1b

    .line 161
    .local v0, newPosition:I
    :goto_1
    iget-object v2, p0, Landroid/text/method/SmileyPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    invoke-static {v2, v0, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 163
    .restart local v1       #result:Ljava/lang/String;
    iput v0, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    goto :goto_0

    .line 155
    .end local v0           #newPosition:I
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    const/16 v2, 0xc

    if-ne p3, v2, :cond_2

    .line 156
    const/16 v0, 0x30

    .restart local v0       #newPosition:I
    goto :goto_1

    .line 158
    .end local v0           #newPosition:I
    :cond_2
    const/4 v2, 0x1

    sub-int v2, p3, v2

    iget v3, p0, Landroid/text/method/SmileyPickerDialog;->prePosition1:I

    invoke-virtual {p0, v3}, Landroid/text/method/SmileyPickerDialog;->countLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x4

    .restart local v0       #newPosition:I
    goto :goto_1
.end method
