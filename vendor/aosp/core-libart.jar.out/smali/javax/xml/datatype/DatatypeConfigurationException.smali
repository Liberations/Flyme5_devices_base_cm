.class public Ljavax/xml/datatype/DatatypeConfigurationException;
.super Ljava/lang/Exception;
.source "DatatypeConfigurationException.java"


# static fields
.field private static final serialVersionUID:J = -0x179562e26ca3fb46L


# instance fields
.field private causeOnJDK13OrBelow:Ljava/lang/Throwable;

.field private transient isJDK14OrAbove:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 76
    invoke-direct {p0, p2}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 88
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    .line 89
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initCauseByReflection(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "initCause"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private printStackTrace0(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 137
    const-string v0, "------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 139
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCause"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "m1":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 158
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v3, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 159
    iput-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    .line 165
    :cond_0
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 169
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "m1":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 161
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v1    # "m1":Ljava/lang/reflect/Method;
    :cond_1
    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "initCause"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 163
    .local v2, "m2":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "m1":Ljava/lang/reflect/Method;
    .end local v2    # "m2":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public printStackTrace()V
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 112
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 127
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method
