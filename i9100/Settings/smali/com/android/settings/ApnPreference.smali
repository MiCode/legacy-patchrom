.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 74
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 70
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 62
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 53
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 111
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->setLayoutResource(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 82
    .local v4, view:Landroid/view/View;
    const v6, 0x1010001

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 83
    .local v5, widget:Landroid/view/View;
    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/RadioButton;

    if-eqz v6, :cond_1

    .line 84
    move-object v0, v5

    check-cast v0, Landroid/widget/RadioButton;

    move-object v2, v0

    .line 85
    .local v2, rb:Landroid/widget/RadioButton;
    iget-boolean v6, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v6, :cond_3

    .line 86
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    .local v1, isChecked:Z
    if-eqz v1, :cond_0

    .line 90
    sput-object v2, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 94
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 95
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 102
    .end local v1           #isChecked:Z
    .end local v2           #rb:Landroid/widget/RadioButton;
    :cond_1
    :goto_0
    const/high16 v6, 0x101

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, textLayout:Landroid/view/View;
    if-eqz v3, :cond_2

    instance-of v6, v3, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    .line 104
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_2
    return-object v4

    .line 98
    .end local v3           #textLayout:Landroid/view/View;
    .restart local v2       #rb:Landroid/widget/RadioButton;
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 123
    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    if-eqz p2, :cond_2

    .line 129
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 137
    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 142
    if-eqz p1, :cond_0

    const/high16 v3, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, pos:I
    packed-switch v1, :pswitch_data_0

    .line 152
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 153
    .local v2, url:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #pos:I
    .end local v2           #url:Landroid/net/Uri;
    :cond_0
    :pswitch_0
    return-void

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selectable"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 162
    return-void
.end method
