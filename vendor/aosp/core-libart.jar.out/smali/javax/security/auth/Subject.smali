.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final _AS:Ljavax/security/auth/AuthPermission;

.field private static final _AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

.field private static final _PRINCIPALS:Ljavax/security/auth/AuthPermission;

.field private static final _PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

.field private static final _PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

.field private static final _READ_ONLY:Ljavax/security/auth/AuthPermission;

.field private static final _SUBJECT:Ljavax/security/auth/AuthPermission;

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field private final principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private transient privateCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient publicCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAs"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_AS:Ljavax/security/auth/AuthPermission;

    .line 59
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAsPrivileged"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

    .line 62
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "getSubject"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_SUBJECT:Ljavax/security/auth/AuthPermission;

    .line 65
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrincipals"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    .line 68
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrivateCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    .line 71
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPublicCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    .line 74
    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "setReadOnly"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_READ_ONLY:Ljavax/security/auth/AuthPermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 93
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 94
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 97
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "subjPrincipals":Ljava/util/Set;, "Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, "pubCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p4, "privCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-nez p2, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subjPrincipals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-nez p3, :cond_1

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pubCredentials == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    if-nez p4, :cond_2

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "privCredentials == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 128
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 129
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 131
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 132
    return-void
.end method

.method static synthetic access$000()Ljavax/security/auth/AuthPermission;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$100(Ljavax/security/auth/Subject;)V
    .locals 0
    .param p0, "x0"    # Ljavax/security/auth/Subject;

    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/security/auth/Subject;->checkState()V

    return-void
.end method

.method static synthetic access$200()Ljavax/security/auth/AuthPermission;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$300()Ljavax/security/auth/AuthPermission;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 490
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    return-void
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .locals 1
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 2
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    if-nez p2, :cond_0

    .line 168
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 2
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p2, :cond_0

    .line 241
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    if-nez p0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 190
    .local v0, "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    :goto_0
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    .line 196
    .local v1, "dccAction":Ljava/security/PrivilegedAction;
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    .line 198
    .local v2, "newContext":Ljava/security/AccessControlContext;
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 187
    .end local v0    # "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    .end local v1    # "dccAction":Ljava/security/PrivilegedAction;
    .end local v2    # "newContext":Ljava/security/AccessControlContext;
    :cond_0
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    .restart local v0    # "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    goto :goto_0
.end method

.method private static doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "context"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    if-nez p0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 264
    .local v0, "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    :goto_0
    new-instance v1, Ljavax/security/auth/Subject$2;

    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$2;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    .line 270
    .local v1, "dccAction":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/security/AccessControlContext;>;"
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    .line 272
    .local v2, "newContext":Ljava/security/AccessControlContext;
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 261
    .end local v0    # "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    .end local v1    # "dccAction":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/security/AccessControlContext;>;"
    .end local v2    # "newContext":Ljava/security/AccessControlContext;
    :cond_0
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    .restart local v0    # "combiner":Ljavax/security/auth/SubjectDomainCombiner;
    goto :goto_0
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 4
    .param p0, "context"    # Ljava/security/AccessControlContext;

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "context == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$3;

    invoke-direct {v0, p0}, Ljavax/security/auth/Subject$3;-><init>(Ljava/security/AccessControlContext;)V

    .line 481
    .local v0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/security/DomainCombiner;>;"
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/DomainCombiner;

    .line 483
    .local v1, "combiner":Ljava/security/DomainCombiner;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljavax/security/auth/SubjectDomainCombiner;

    if-nez v2, :cond_2

    .line 484
    :cond_1
    const/4 v2, 0x0

    .line 486
    .end local v1    # "combiner":Ljava/security/DomainCombiner;
    :goto_0
    return-object v2

    .restart local v1    # "combiner":Ljava/security/DomainCombiner;
    :cond_2
    check-cast v1, Ljavax/security/auth/SubjectDomainCombiner;

    .end local v1    # "combiner":Ljava/security/DomainCombiner;
    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 454
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 455
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    .line 456
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 460
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    if-ne p0, p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 294
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 297
    check-cast v0, Ljavax/security/auth/Subject;

    .line 299
    .local v0, "that":Ljavax/security/auth/Subject;
    iget-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    iget-object v4, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v3, v4}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v3, v4}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 304
    goto :goto_0
.end method

.method public getPrincipals()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    check-cast v0, Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 400
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Subject:\n"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 421
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    const-string v4, "\tPrincipal: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 427
    :cond_0
    iget-object v4, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 428
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    const-string v4, "\tPublic Credential: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 434
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 435
    .local v3, "offset":I
    iget-object v4, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 437
    :goto_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 438
    const-string v4, "\tPrivate Credential: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 444
    const-string v4, "\tPrivate Credentials: no accessible information\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
