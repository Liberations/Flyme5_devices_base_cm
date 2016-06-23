.class public abstract Ljava/util/EventListenerProxy;
.super Ljava/lang/Object;
.source "EventListenerProxy.java"

# interfaces
.implements Ljava/util/EventListener;


# instance fields
.field private final listener:Ljava/util/EventListener;


# direct methods
.method public constructor <init>(Ljava/util/EventListener;)V
    .locals 0
    .param p1, "listener"    # Ljava/util/EventListener;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    .line 36
    return-void
.end method


# virtual methods
.method public getListener()Ljava/util/EventListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljava/util/EventListenerProxy;->listener:Ljava/util/EventListener;

    return-object v0
.end method
