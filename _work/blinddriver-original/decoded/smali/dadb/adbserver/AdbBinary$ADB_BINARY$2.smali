.class final Ldadb/adbserver/AdbBinary$ADB_BINARY$2;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/adbserver/AdbBinary;
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


# static fields
.field public static final INSTANCE:Ldadb/adbserver/AdbBinary$ADB_BINARY$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldadb/adbserver/AdbBinary$ADB_BINARY$2;

    invoke-direct {v0}, Ldadb/adbserver/AdbBinary$ADB_BINARY$2;-><init>()V

    sput-object v0, Ldadb/adbserver/AdbBinary$ADB_BINARY$2;->INSTANCE:Ldadb/adbserver/AdbBinary$ADB_BINARY$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 0

    .line 1
    sget-object p0, Ldadb/adbserver/AdbBinary;->INSTANCE:Ldadb/adbserver/AdbBinary;

    invoke-static {p0}, Ldadb/adbserver/AdbBinary;->access$find(Ldadb/adbserver/AdbBinary;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Ldadb/adbserver/AdbBinary$ADB_BINARY$2;->invoke()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
