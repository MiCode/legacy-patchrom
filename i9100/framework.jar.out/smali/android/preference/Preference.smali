.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/preference/OnDependencyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;,
        Landroid/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;",
        "Landroid/preference/OnDependencyChangeListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mHasSpecifiedLayout:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mPersistent:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const v3, 0x7fffffff

    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    .line 89
    iput-boolean v5, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 90
    iput-boolean v5, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 92
    iput-boolean v5, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 95
    iput-boolean v5, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 100
    iput-boolean v5, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 102
    const v3, 0x109004b

    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 104
    iput-boolean v4, p0, Landroid/preference/Preference;->mHasSpecifiedLayout:Z

    .line 188
    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 190
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 193
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 194
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 192
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 200
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 204
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 208
    :pswitch_3
    iget v3, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mOrder:I

    goto :goto_1

    .line 212
    :pswitch_4
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 216
    :pswitch_5
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 220
    :pswitch_6
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mEnabled:Z

    goto :goto_1

    .line 224
    :pswitch_7
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mSelectable:Z

    goto :goto_1

    .line 228
    :pswitch_8
    iget-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mPersistent:Z

    goto :goto_1

    .line 232
    :pswitch_9
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 236
    :pswitch_a
    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_1

    .line 240
    :pswitch_b
    iget-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    goto :goto_1

    .line 244
    .end local v1           #attr:I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    iput-boolean v5, p0, Landroid/preference/Preference;->mHasSpecifiedLayout:Z

    .line 250
    :cond_1
    return-void

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1166
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1167
    .local v0, shouldPersist:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1168
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1169
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1172
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1001
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1004
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 1005
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1007
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroid/preference/Preference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1053
    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1056
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 464
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 466
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 467
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 468
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 469
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 468
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    .end local v1           #i:I
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 1197
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1199
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1200
    :catch_0
    move-exception v0

    .line 1204
    .local v0, unused:Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1013
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1015
    .local v0, oldDependency:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1016
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    .line 1019
    .end local v0           #oldDependency:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroid/preference/Preference;)V
    .locals 1
    .parameter "dependent"

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1070
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .parameter "newValue"

    .prologue
    .line 756
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    const v1, 0x7fffffff

    .line 920
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_1

    .line 923
    :cond_0
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 930
    :goto_0
    return v0

    .line 924
    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 925
    const/4 v0, 0x1

    goto :goto_0

    .line 926
    :cond_2
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 927
    const/4 v0, -0x1

    goto :goto_0

    .line 930
    :cond_3
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 1548
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1550
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1551
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1552
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1553
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1554
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1559
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "container"

    .prologue
    .line 1495
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1496
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1497
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1498
    .local v0, state:Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1499
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1502
    :cond_0
    if-eqz v0, :cond_1

    .line 1503
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1506
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .parameter "key"

    .prologue
    .line 1032
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1033
    :cond_0
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 890
    const/4 v0, 0x0

    .line 893
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1457
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1458
    .local v2, title:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1461
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1462
    .local v1, summary:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1465
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1469
    :cond_2
    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 653
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1428
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    .line 1432
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1340
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    .line 1344
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1296
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, p1

    .line 1300
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1384
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, p1

    .line 1388
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defaultReturnValue"

    .prologue
    .line 1252
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 1256
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 866
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 392
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSpecifiedLayout()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Landroid/preference/Preference;->mHasSpecifiedLayout:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    .line 951
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .parameter "disableDependents"

    .prologue
    .line 1080
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1082
    .local v0, dependents:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1090
    :cond_0
    return-void

    .line 1086
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1087
    .local v1, dependentsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1088
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1087
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    .line 962
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 997
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 2
    .parameter "preferenceManager"

    .prologue
    .line 980
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 982
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    .line 984
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    .line 985
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    .line 434
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 435
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_0
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #textView:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 440
    .restart local v1       #textView:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 441
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 442
    .local v0, summary:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 443
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .end local v0           #summary:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-boolean v2, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v2, :cond_3

    .line 456
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 458
    :cond_3
    return-void

    .line 449
    .restart local v0       #summary:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 450
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 409
    iget-object v3, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 412
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, layout:Landroid/view/View;
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_0

    .line 415
    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 416
    .local v2, widgetFrame:Landroid/view/ViewGroup;
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 419
    .end local v2           #widgetFrame:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 1
    .parameter "dependency"
    .parameter "disableDependent"

    .prologue
    .line 1099
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1100
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 1103
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1105
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1107
    :cond_0
    return-void

    .line 1100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1151
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1573
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1576
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1522
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .parameter "restorePersistedValue"
    .parameter "defaultValue"

    .prologue
    .line 1194
    return-void
.end method

.method performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    .line 812
    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 816
    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 817
    .local v2, preferenceManager:Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 818
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 820
    .local v1, listener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 826
    .end local v1           #listener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 827
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 828
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1402
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1403
    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    move v1, v2

    .line 1413
    :goto_1
    return v1

    :cond_0
    move v1, v3

    .line 1403
    goto :goto_0

    .line 1408
    :cond_1
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1409
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1410
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    move v1, v2

    .line 1411
    goto :goto_1

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v1, v3

    .line 1413
    goto :goto_1
.end method

.method protected persistFloat(F)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 1314
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1315
    const/high16 v1, 0x7fc0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1325
    :goto_0
    return v1

    .line 1320
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1321
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1322
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    move v1, v2

    .line 1323
    goto :goto_0

    .line 1325
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 1270
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    xor-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 1281
    :goto_0
    return v1

    .line 1276
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1277
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1278
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    move v1, v2

    .line 1279
    goto :goto_0

    .line 1281
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 1358
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1359
    const-wide/16 v1, -0x1

    xor-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    move v1, v3

    .line 1369
    :goto_0
    return v1

    .line 1364
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1366
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    move v1, v3

    .line 1367
    goto :goto_0

    .line 1369
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 1223
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne p1, v1, :cond_0

    move v1, v2

    .line 1235
    :goto_0
    return v1

    .line 1230
    :cond_0
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1231
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1232
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    move v1, v2

    .line 1233
    goto :goto_0

    .line 1235
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    .line 702
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1534
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1535
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1481
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1482
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 1161
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1162
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .parameter "dependencyKey"

    .prologue
    .line 1127
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1130
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1131
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1132
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 581
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 582
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 585
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 587
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 589
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 303
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 304
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 672
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 674
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    .line 677
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 330
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSpecifiedLayout:Z

    .line 335
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 336
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 941
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 942
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .parameter "onPreferenceChangeListener"

    .prologue
    .line 766
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 767
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .parameter "onPreferenceClickListener"

    .prologue
    .line 785
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 786
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .parameter "order"

    .prologue
    .line 488
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 489
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    .line 492
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 494
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .parameter "persistent"

    .prologue
    .line 744
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 745
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .parameter "selectable"

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 607
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 608
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 610
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .parameter "shouldDisableView"

    .prologue
    .line 633
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 634
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 635
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 571
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 558
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 559
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 560
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 562
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 529
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 516
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    :cond_1
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 518
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 520
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .parameter "widgetLayoutResId"

    .prologue
    .line 358
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mHasSpecifiedLayout:Z

    .line 362
    :cond_0
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 363
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1116
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1441
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
