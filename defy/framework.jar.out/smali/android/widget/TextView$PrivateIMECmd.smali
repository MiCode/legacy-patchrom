.class public final Landroid/widget/TextView$PrivateIMECmd;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrivateIMECmd"
.end annotation


# static fields
.field public static final CLEAR_META_STATE:Ljava/lang/String; = "com.motorola.android.inputmethod.clearMetaState"

.field public static final HIGHLIGHT_WORD:Ljava/lang/String; = "android.ime.command.HIGHLIGHT_WORD"

.field public static final MOTION_CLICK:Ljava/lang/String; = "android.ime.command.MOTION_CLICK"

.field public static final MOTION_EVENT:Ljava/lang/String; = "android.ime.command.MOTION_EVENT"

.field public static final REPLACE_TEXT:Ljava/lang/String; = "android.ime.command.REPLACE_TEXT"

.field public static final SELECTION_REPLACED:Ljava/lang/String; = "android.ime.command.SELECTION_REPLACED"


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/TextView$PrivateIMECmd;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
