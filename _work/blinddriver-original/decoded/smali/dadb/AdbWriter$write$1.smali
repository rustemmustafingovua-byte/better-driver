.class final Ldadb/AdbWriter$write$1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldadb/AdbWriter;->write(III[BII)V
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
.field final synthetic $arg0:I

.field final synthetic $arg1:I

.field final synthetic $command:I

.field final synthetic $length:I

.field final synthetic $payload:[B


# direct methods
.method public constructor <init>(IIII[B)V
    .locals 0

    iput p1, p0, Ldadb/AdbWriter$write$1;->$command:I

    iput p2, p0, Ldadb/AdbWriter$write$1;->$arg0:I

    iput p3, p0, Ldadb/AdbWriter$write$1;->$arg1:I

    iput p4, p0, Ldadb/AdbWriter$write$1;->$length:I

    iput-object p5, p0, Ldadb/AdbWriter$write$1;->$payload:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldadb/AdbWriter$write$1;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 9

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ldadb/AdbMessage;

    iget v2, p0, Ldadb/AdbWriter$write$1;->$command:I

    iget v3, p0, Ldadb/AdbWriter$write$1;->$arg0:I

    iget v4, p0, Ldadb/AdbWriter$write$1;->$arg1:I

    iget v5, p0, Ldadb/AdbWriter$write$1;->$length:I

    iget-object p0, p0, Ldadb/AdbWriter$write$1;->$payload:[B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    :cond_0
    move-object v8, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v8}, Ldadb/AdbMessage;-><init>(IIIIII[B)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") > "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
