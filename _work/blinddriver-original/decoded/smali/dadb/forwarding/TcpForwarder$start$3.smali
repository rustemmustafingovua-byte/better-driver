.class final Ldadb/forwarding/TcpForwarder$start$3;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/forwarding/TcpForwarder;->start()V
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
.field final synthetic this$0:Ldadb/forwarding/TcpForwarder;


# direct methods
.method public constructor <init>(Ldadb/forwarding/TcpForwarder;)V
    .locals 0

    iput-object p1, p0, Ldadb/forwarding/TcpForwarder$start$3;->this$0:Ldadb/forwarding/TcpForwarder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object p0, p0, Ldadb/forwarding/TcpForwarder$start$3;->this$0:Ldadb/forwarding/TcpForwarder;

    invoke-static {p0}, Ldadb/forwarding/TcpForwarder;->access$getState$p(Ldadb/forwarding/TcpForwarder;)Ldadb/forwarding/TcpForwarder$State;

    move-result-object p0

    sget-object v0, Ldadb/forwarding/TcpForwarder$State;->STARTED:Ldadb/forwarding/TcpForwarder$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/forwarding/TcpForwarder$start$3;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
