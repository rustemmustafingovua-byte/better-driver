.class public final Ldadb/AdbShellResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allOutput$delegate:Lt8/g;

.field private final errorOutput:Ljava/lang/String;

.field private final exitCode:I

.field private final output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorOutput"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldadb/AdbShellResponse;->output:Ljava/lang/String;

    iput-object p2, p0, Ldadb/AdbShellResponse;->errorOutput:Ljava/lang/String;

    iput p3, p0, Ldadb/AdbShellResponse;->exitCode:I

    new-instance p1, Ldadb/AdbShellResponse$allOutput$2;

    invoke-direct {p1, p0}, Ldadb/AdbShellResponse$allOutput$2;-><init>(Ldadb/AdbShellResponse;)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Ldadb/AdbShellResponse;->allOutput$delegate:Lt8/g;

    return-void
.end method


# virtual methods
.method public final getAllOutput()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldadb/AdbShellResponse;->allOutput$delegate:Lt8/g;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getErrorOutput()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldadb/AdbShellResponse;->errorOutput:Ljava/lang/String;

    return-object p0
.end method

.method public final getExitCode()I
    .locals 0

    iget p0, p0, Ldadb/AdbShellResponse;->exitCode:I

    return p0
.end method

.method public final getOutput()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldadb/AdbShellResponse;->output:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ldadb/AdbShellResponse;->exitCode:I

    invoke-virtual {p0}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Shell response ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
