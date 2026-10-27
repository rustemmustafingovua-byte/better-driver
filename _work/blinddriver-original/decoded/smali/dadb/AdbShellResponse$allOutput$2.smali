.class final Ldadb/AdbShellResponse$allOutput$2;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/AdbShellResponse;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
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
.field final synthetic this$0:Ldadb/AdbShellResponse;


# direct methods
.method public constructor <init>(Ldadb/AdbShellResponse;)V
    .locals 0

    iput-object p1, p0, Ldadb/AdbShellResponse$allOutput$2;->this$0:Ldadb/AdbShellResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/AdbShellResponse$allOutput$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Ldadb/AdbShellResponse$allOutput$2;->this$0:Ldadb/AdbShellResponse;

    invoke-virtual {v0}, Ldadb/AdbShellResponse;->getOutput()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ldadb/AdbShellResponse$allOutput$2;->this$0:Ldadb/AdbShellResponse;

    invoke-virtual {p0}, Ldadb/AdbShellResponse;->getErrorOutput()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
