.class public Landroid/webkit/ConsoleMessage;
.super Ljava/lang/Object;
.source "ConsoleMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ConsoleMessage$MessageLevel;
    }
.end annotation


# instance fields
.field private mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

.field private mLineNumber:I

.field private mMessage:Ljava/lang/String;

.field private mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V
    .locals 0
    .parameter "message"
    .parameter "sourceId"
    .parameter "lineNumber"
    .parameter "msgLevel"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    iput p3, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    iput-object p4, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-void
.end method


# virtual methods
.method public lineNumber()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/ConsoleMessage;->mLineNumber:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mLevel:Landroid/webkit/ConsoleMessage$MessageLevel;

    return-object v0
.end method

.method public sourceId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/ConsoleMessage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method
