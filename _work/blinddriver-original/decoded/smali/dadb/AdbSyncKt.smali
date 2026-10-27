.class public final Ldadb/AdbSyncKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA:Ljava/lang/String; = "DATA"

.field public static final DONE:Ljava/lang/String; = "DONE"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final LIST:Ljava/lang/String; = "LIST"

.field public static final OKAY:Ljava/lang/String; = "OKAY"

.field public static final QUIT:Ljava/lang/String; = "QUIT"

.field public static final RECV:Ljava/lang/String; = "RECV"

.field public static final SEND:Ljava/lang/String; = "SEND"

.field public static final STAT:Ljava/lang/String; = "STAT"

.field private static final SYNC_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v7, "QUIT"

    const-string v8, "FAIL"

    const-string v0, "LIST"

    const-string v1, "RECV"

    const-string v2, "SEND"

    const-string v3, "STAT"

    const-string v4, "DATA"

    const-string v5, "DONE"

    const-string v6, "OKAY"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ldadb/AdbSyncKt;->SYNC_IDS:Ljava/util/Set;

    return-void
.end method

.method public static final getSYNC_IDS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldadb/AdbSyncKt;->SYNC_IDS:Ljava/util/Set;

    return-object v0
.end method
