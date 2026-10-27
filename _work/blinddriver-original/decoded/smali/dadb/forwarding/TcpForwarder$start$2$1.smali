.class final Ldadb/forwarding/TcpForwarder$start$2$1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/forwarding/TcpForwarder$start$2;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9/o;",
        "Li9/a;"
    }
.end annotation


# instance fields
.field final synthetic $e:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder$start$2$1;->$e:Ljava/io/IOException;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/forwarding/TcpForwarder$start$2$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object p0, p0, Ldadb/forwarding/TcpForwarder$start$2$1;->$e:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "could not start TCP port forwarding: "

    .line 3
    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
