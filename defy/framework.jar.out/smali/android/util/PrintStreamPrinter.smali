.class public Landroid/util/PrintStreamPrinter;
.super Ljava/lang/Object;
.source "PrintStreamPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mPS:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "pw"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/PrintStreamPrinter;->mPS:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1
    .parameter "x"

    .prologue
    iget-object v0, p0, Landroid/util/PrintStreamPrinter;->mPS:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
