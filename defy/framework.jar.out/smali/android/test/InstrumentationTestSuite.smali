.class public Landroid/test/InstrumentationTestSuite;
.super Ljunit/framework/TestSuite;
.source "InstrumentationTestSuite.java"


# instance fields
.field private final mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "instr"

    .prologue
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    iput-object p1, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "theClass"
    .parameter "instr"

    .prologue
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation;)V
    .locals 0
    .parameter "name"
    .parameter "instr"

    .prologue
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public addTestSuite(Ljava/lang/Class;)V
    .locals 2
    .parameter "testClass"

    .prologue
    new-instance v0, Landroid/test/InstrumentationTestSuite;

    iget-object v1, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {v0, p1, v1}, Landroid/test/InstrumentationTestSuite;-><init>(Ljava/lang/Class;Landroid/app/Instrumentation;)V

    invoke-virtual {p0, v0}, Landroid/test/InstrumentationTestSuite;->addTest(Ljunit/framework/Test;)V

    return-void
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 3
    .parameter "test"
    .parameter "result"

    .prologue
    instance-of v1, p1, Landroid/test/InstrumentationTestCase;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/test/InstrumentationTestCase;

    move-object v1, v0

    iget-object v2, p0, Landroid/test/InstrumentationTestSuite;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v2}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    :cond_0
    invoke-super {p0, p1, p2}, Ljunit/framework/TestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    return-void
.end method
