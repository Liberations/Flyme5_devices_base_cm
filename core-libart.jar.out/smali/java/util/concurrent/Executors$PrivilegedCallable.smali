.class final Ljava/util/concurrent/Executors$PrivilegedCallable;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrivilegedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final task:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallable;, "Ljava/util/concurrent/Executors$PrivilegedCallable<TT;>;"
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;

    .line 436
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->acc:Ljava/security/AccessControlContext;

    .line 437
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/Executors$PrivilegedCallable;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/Executors$PrivilegedCallable;

    .prologue
    .line 430
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Ljava/util/concurrent/Executors$PrivilegedCallable;, "Ljava/util/concurrent/Executors$PrivilegedCallable<TT;>;"
    :try_start_0
    new-instance v1, Ljava/util/concurrent/Executors$PrivilegedCallable$1;

    invoke-direct {v1, p0}, Ljava/util/concurrent/Executors$PrivilegedCallable$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedCallable;)V

    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->acc:Ljava/security/AccessControlContext;

    invoke-static {v1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method
