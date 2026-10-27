.class public Lokio/NioSystemFileSystem;
.super Lokio/JvmSystemFileSystem;
.source "NioSystemFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNioSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioSystemFileSystem.kt\nokio/NioSystemFileSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0004J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokio/NioSystemFileSystem;",
        "Lokio/JvmSystemFileSystem;",
        "()V",
        "atomicMove",
        "",
        "source",
        "Lokio/Path;",
        "target",
        "createSymlink",
        "metadataOrNull",
        "Lokio/FileMetadata;",
        "nioPath",
        "Ljava/nio/file/Path;",
        "path",
        "toString",
        "",
        "zeroToNull",
        "",
        "Ljava/nio/file/attribute/FileTime;",
        "(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lokio/JvmSystemFileSystem;-><init>()V

    return-void
.end method

.method private final zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 6
    .param p1, "$this$zeroToNull"    # Ljava/nio/file/attribute/FileTime;

    .line 73
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 93
    .local v1, "it":J
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-takeIf-NioSystemFileSystem$zeroToNull$1":I
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .end local v1    # "it":J
    .end local v3    # "$i$a$-takeIf-NioSystemFileSystem$zeroToNull$1":I
    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 5
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "atomic move not supported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/nio/file/NoSuchFileException;
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 3
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 88
    return-void
.end method

.method protected final metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;
    .locals 14
    .param p1, "nioPath"    # Ljava/nio/file/Path;

    const-string v0, "nioPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 41
    const/4 v1, 0x0

    :try_start_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 43
    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v2}, [Ljava/nio/file/LinkOption;

    move-result-object v2

    .line 40
    invoke-static {p1, v0, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/file/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    nop

    .line 51
    .local v0, "attributes":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {p1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_0
    move-object v2, v1

    .line 51
    :goto_0
    nop

    .line 57
    .local v2, "symlinkTarget":Ljava/nio/file/Path;
    new-instance v3, Lokio/FileMetadata;

    .line 58
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v4

    .line 59
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v5

    .line 60
    if-eqz v2, :cond_1

    sget-object v6, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v2, v7, v8, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    .line 61
    :goto_1
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 62
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v8}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v1

    .line 63
    :goto_2
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-direct {p0, v9}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v1

    .line 64
    :goto_3
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-direct {p0, v10}, Lokio/NioSystemFileSystem;->zeroToNull(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;

    move-result-object v1

    :cond_4
    move-object v10, v1

    .line 57
    const/16 v12, 0x80

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v13}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 47
    .end local v0    # "attributes":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v2    # "symlinkTarget":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "_":Ljava/nio/file/FileSystemException;
    return-object v1

    .line 45
    .end local v0    # "_":Ljava/nio/file/FileSystemException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "_":Ljava/nio/file/NoSuchFileException;
    return-object v1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 1
    .param p1, "path"    # Lokio/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lokio/Path;->toNioPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokio/NioSystemFileSystem;->metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "NioSystemFileSystem"

    return-object v0
.end method
