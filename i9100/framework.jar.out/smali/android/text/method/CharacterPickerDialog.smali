.class public Landroid/text/method/CharacterPickerDialog;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
    }
.end annotation


# instance fields
.field localeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "text"
    .parameter "options"
    .parameter "insert"

    .prologue
    .line 68
    const v0, 0x1030059

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 71
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    .line 75
    iput-object p3, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    .line 76
    iput-object p4, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    .line 77
    iput-boolean p5, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    return-object v0
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "replace"

    .prologue
    .line 146
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 147
    .local v0, selEnd:I
    iget-boolean v1, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 153
    :goto_0
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 154
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 128
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/method/CharacterPickerDialog;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 160
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 166
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 163
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 164
    .local v0, result:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 86
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 87
    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    const v3, 0x109001f

    invoke-virtual {p0, v3}, Landroid/text/method/CharacterPickerDialog;->setContentView(I)V

    .line 92
    const v3, 0x10201aa

    invoke-virtual {p0, v3}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 93
    .local v1, grid:Landroid/widget/GridView;
    new-instance v3, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    const v3, 0x10201ab

    invoke-virtual {p0, v3}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 97
    iget-object v3, p0, Landroid/text/method/CharacterPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const-string v3, "GT-I9100"

    const-string v4, "SGH-I927"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Landroid/text/method/CharacterPickerDialog;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 106
    new-instance v3, Landroid/text/method/CharacterPickerDialog$1;

    invoke-direct {v3, p0}, Landroid/text/method/CharacterPickerDialog$1;-><init>(Landroid/text/method/CharacterPickerDialog;)V

    iput-object v3, p0, Landroid/text/method/CharacterPickerDialog;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iget-object v3, p0, Landroid/text/method/CharacterPickerDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/text/method/CharacterPickerDialog;->localeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 141
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
