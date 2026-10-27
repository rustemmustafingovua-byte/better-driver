.class public final Ldadb/AdbConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldadb/AdbConnection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Ldadb/AdbConnection$Companion;


# instance fields
.field private final adbWriter:Ldadb/AdbWriter;

.field private final closeable:Ljava/io/Closeable;

.field private final maxPayloadSize:I

.field private final messageQueue:Ldadb/AdbMessageQueue;

.field private final random:Ljava/util/Random;

.field private final supportedFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldadb/AdbConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldadb/AdbConnection$Companion;-><init>(Lj9/g;)V

    sput-object v0, Ldadb/AdbConnection;->Companion:Ldadb/AdbConnection$Companion;

    return-void
.end method

.method public constructor <init>(Ldadb/AdbReader;Ldadb/AdbWriter;Ljava/io/Closeable;Ljava/util/Set;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldadb/AdbReader;",
            "Ldadb/AdbWriter;",
            "Ljava/io/Closeable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "adbReader"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adbWriter"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedFeatures"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldadb/AdbConnection;->adbWriter:Ldadb/AdbWriter;

    iput-object p3, p0, Ldadb/AdbConnection;->closeable:Ljava/io/Closeable;

    iput-object p4, p0, Ldadb/AdbConnection;->supportedFeatures:Ljava/util/Set;

    iput p5, p0, Ldadb/AdbConnection;->version:I

    iput p6, p0, Ldadb/AdbConnection;->maxPayloadSize:I

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Ldadb/AdbConnection;->random:Ljava/util/Random;

    new-instance p2, Ldadb/AdbMessageQueue;

    invoke-direct {p2, p1}, Ldadb/AdbMessageQueue;-><init>(Ldadb/AdbReader;)V

    iput-object p2, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    return-void
.end method

.method private final newId()I
    .locals 0

    iget-object p0, p0, Ldadb/AdbConnection;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    invoke-virtual {v0}, Ldadb/AdbMessageQueue;->close()V

    iget-object v0, p0, Ldadb/AdbConnection;->adbWriter:Ldadb/AdbWriter;

    invoke-virtual {v0}, Ldadb/AdbWriter;->close()V

    iget-object p0, p0, Ldadb/AdbConnection;->closeable:Ljava/io/Closeable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final ensureEmpty$dadb()V
    .locals 0

    iget-object p0, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    invoke-virtual {p0}, Ldadb/MessageQueue;->ensureEmpty()V

    return-void
.end method

.method public final open(Ljava/lang/String;)Ldadb/AdbStream;
    .locals 7

    const-string v0, "destination"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldadb/AdbConnection;->newId()I

    move-result v5

    iget-object v0, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    invoke-virtual {v0, v5}, Ldadb/MessageQueue;->startListening(I)V

    :try_start_0
    iget-object v0, p0, Ldadb/AdbConnection;->adbWriter:Ldadb/AdbWriter;

    invoke-virtual {v0, v5, p1}, Ldadb/AdbWriter;->writeOpen(ILjava/lang/String;)V

    iget-object p1, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    const v0, 0x59414b4f

    invoke-virtual {p1, v5, v0}, Ldadb/MessageQueue;->take(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldadb/AdbMessage;

    invoke-virtual {p1}, Ldadb/AdbMessage;->getArg0()I

    move-result v6

    new-instance v1, Ldadb/AdbStreamImpl;

    iget-object v2, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    iget-object v3, p0, Ldadb/AdbConnection;->adbWriter:Ldadb/AdbWriter;

    iget v4, p0, Ldadb/AdbConnection;->maxPayloadSize:I

    invoke-direct/range {v1 .. v6}, Ldadb/AdbStreamImpl;-><init>(Ldadb/AdbMessageQueue;Ldadb/AdbWriter;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Ldadb/AdbConnection;->messageQueue:Ldadb/AdbMessageQueue;

    invoke-virtual {p0, v5}, Ldadb/MessageQueue;->stopListening(I)V

    throw p1
.end method

.method public final supportsFeature(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ldadb/AdbConnection;->supportedFeatures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
