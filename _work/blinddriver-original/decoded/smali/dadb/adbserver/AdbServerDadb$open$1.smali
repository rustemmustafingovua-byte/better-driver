.class public final Ldadb/adbserver/AdbServerDadb$open$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldadb/AdbStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/adbserver/AdbServerDadb;->open(Ljava/lang/String;)Ldadb/AdbStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $socket:Ljava/net/Socket;

.field private final sink:Lbb/h;

.field private final source:Lbb/i;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    iput-object p1, p0, Ldadb/adbserver/AdbServerDadb$open$1;->$socket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lpc/h;->y(Ljava/net/Socket;)Lbb/d;

    move-result-object v0

    new-instance v1, Lbb/p;

    invoke-direct {v1, v0}, Lbb/p;-><init>(Lbb/u;)V

    iput-object v1, p0, Ldadb/adbserver/AdbServerDadb$open$1;->source:Lbb/i;

    invoke-static {p1}, Lpc/h;->w(Ljava/net/Socket;)Lbb/c;

    move-result-object p1

    invoke-static {p1}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object p1

    iput-object p1, p0, Ldadb/adbserver/AdbServerDadb$open$1;->sink:Lbb/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Ldadb/adbserver/AdbServerDadb$open$1;->$socket:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public getSink()Lbb/h;
    .locals 0

    iget-object p0, p0, Ldadb/adbserver/AdbServerDadb$open$1;->sink:Lbb/h;

    return-object p0
.end method

.method public getSource()Lbb/i;
    .locals 0

    iget-object p0, p0, Ldadb/adbserver/AdbServerDadb$open$1;->source:Lbb/i;

    return-object p0
.end method
