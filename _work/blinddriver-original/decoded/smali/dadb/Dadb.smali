.class public interface abstract Ldadb/Dadb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldadb/Dadb$Companion;,
        Ldadb/Dadb$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Ldadb/Dadb$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldadb/Dadb$Companion;->$$INSTANCE:Ldadb/Dadb$Companion;

    sput-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    return-void
.end method

.method public static create(Ljava/lang/String;I)Ldadb/Dadb;
    .locals 1

    .line 1
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;I)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;ILdadb/AdbKeyPair;)Ldadb/Dadb;
    .locals 1

    .line 2
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1, p2}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;ILdadb/AdbKeyPair;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;ILdadb/AdbKeyPair;I)Ldadb/Dadb;
    .locals 1

    .line 3
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;ILdadb/AdbKeyPair;I)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;ILdadb/AdbKeyPair;II)Ldadb/Dadb;
    .locals 6

    .line 4
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;ILdadb/AdbKeyPair;II)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)Ldadb/Dadb;
    .locals 7

    .line 5
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ldadb/Dadb$Companion;->create(Ljava/lang/String;ILdadb/AdbKeyPair;IIZ)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static discover()Ldadb/Dadb;
    .locals 1

    .line 1
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0}, Ldadb/Dadb$Companion;->discover()Ldadb/Dadb;

    move-result-object v0

    return-object v0
.end method

.method public static discover(Ljava/lang/String;)Ldadb/Dadb;
    .locals 1

    .line 2
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0}, Ldadb/Dadb$Companion;->discover(Ljava/lang/String;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static discover(Ljava/lang/String;Ldadb/AdbKeyPair;)Ldadb/Dadb;
    .locals 1

    .line 3
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1}, Ldadb/Dadb$Companion;->discover(Ljava/lang/String;Ldadb/AdbKeyPair;)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static discover(Ljava/lang/String;Ldadb/AdbKeyPair;I)Ldadb/Dadb;
    .locals 1

    .line 4
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1, p2}, Ldadb/Dadb$Companion;->discover(Ljava/lang/String;Ldadb/AdbKeyPair;I)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static discover(Ljava/lang/String;Ldadb/AdbKeyPair;II)Ldadb/Dadb;
    .locals 1

    .line 5
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldadb/Dadb$Companion;->discover(Ljava/lang/String;Ldadb/AdbKeyPair;II)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static discover(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ldadb/Dadb;
    .locals 6

    .line 6
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ldadb/Dadb$Companion;->discover(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ldadb/Dadb;

    move-result-object p0

    return-object p0
.end method

.method public static list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0}, Ldadb/Dadb$Companion;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/lang/String;Ldadb/AdbKeyPair;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            ")",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;Ldadb/AdbKeyPair;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/lang/String;Ldadb/AdbKeyPair;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            "I)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1, p2}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;Ldadb/AdbKeyPair;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/lang/String;Ldadb/AdbKeyPair;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            "II)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;Ldadb/AdbKeyPair;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldadb/AdbKeyPair;",
            "IIZ)",
            "Ljava/util/List<",
            "Ldadb/Dadb;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ldadb/Dadb$Companion;->list(Ljava/lang/String;Ldadb/AdbKeyPair;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs abstract abbExec([Ljava/lang/String;)Ldadb/AdbStream;
.end method

.method public varargs abstract execCmd([Ljava/lang/String;)Ldadb/AdbStream;
.end method

.method public varargs abstract install(Lbb/u;J[Ljava/lang/String;)V
.end method

.method public varargs abstract install(Ljava/io/File;[Ljava/lang/String;)V
.end method

.method public varargs abstract installMultiple(Ljava/util/List;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;)Ldadb/AdbStream;
.end method

.method public abstract openShell(Ljava/lang/String;)Ldadb/AdbShellStream;
.end method

.method public abstract openSync()Ldadb/AdbSyncStream;
.end method

.method public abstract pull(Lbb/t;Ljava/lang/String;)V
.end method

.method public abstract pull(Ljava/io/File;Ljava/lang/String;)V
.end method

.method public abstract push(Lbb/u;Ljava/lang/String;IJ)V
.end method

.method public abstract push(Ljava/io/File;Ljava/lang/String;IJ)V
.end method

.method public abstract root()V
.end method

.method public abstract shell(Ljava/lang/String;)Ldadb/AdbShellResponse;
.end method

.method public abstract supportsFeature(Ljava/lang/String;)Z
.end method

.method public abstract tcpForward(II)Ljava/lang/AutoCloseable;
.end method

.method public abstract uninstall(Ljava/lang/String;)V
.end method

.method public abstract unroot()V
.end method
