.class public final Ldadb/AdbWriter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/AdbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj9/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldadb/AdbWriter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$payloadChecksum(Ldadb/AdbWriter$Companion;[B)I
    .locals 0

    invoke-direct {p0, p1}, Ldadb/AdbWriter$Companion;->payloadChecksum([B)I

    move-result p0

    return p0
.end method

.method private final payloadChecksum([B)I
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
