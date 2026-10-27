.class public abstract Lmc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf8/m2;

.field public static final b:Lf8/x3;

.field public static final c:Lf8/m2;

.field public static final d:Lf8/x3;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\n\"src/main/protobuf/fileformat.proto\u0012\u0006OSMPBF\"l\n\u0004Blob\u0012\u000b\n\u0003raw\u0018\u0001 \u0001(\u000c\u0012\u0010\n\u0008raw_size\u0018\u0002 \u0001(\u0005\u0012\u0011\n\tzlib_data\u0018\u0003 \u0001(\u000c\u0012\u0011\n\tlzma_data\u0018\u0004 \u0001(\u000c\u0012\u001f\n\u0013OBSOLETE_bzip2_data\u0018\u0005 \u0001(\u000cB\u0002\u0018\u0001\"?\n\nBlobHeader\u0012\u000c\n\u0004type\u0018\u0001 \u0002(\t\u0012\u0011\n\tindexdata\u0018\u0002 \u0001(\u000c\u0012\u0010\n\u0008datasize\u0018\u0003 \u0002(\u0005B%\n#org.openstreetmap.osmosis.osmbinary"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lf8/w2;

    invoke-static {v0, v2}, Lf8/w2;->i([Ljava/lang/String;[Lf8/w2;)Lf8/w2;

    move-result-object v0

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf8/m2;

    sput-object v1, Lmc/g;->a:Lf8/m2;

    new-instance v2, Lf8/x3;

    const-string v3, "LzmaData"

    const-string v4, "OBSOLETEBzip2Data"

    const-string v5, "Raw"

    const-string v6, "RawSize"

    const-string v7, "ZlibData"

    filled-new-array {v5, v6, v7, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v2, Lmc/g;->b:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/m2;

    sput-object v0, Lmc/g;->c:Lf8/m2;

    new-instance v1, Lf8/x3;

    const-string v2, "Indexdata"

    const-string v3, "Datasize"

    const-string v4, "Type"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v1, Lmc/g;->d:Lf8/x3;

    return-void
.end method
