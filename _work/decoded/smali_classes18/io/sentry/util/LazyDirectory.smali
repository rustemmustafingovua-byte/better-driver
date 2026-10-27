.class public final Lio/sentry/util/LazyDirectory;
.super Ljava/lang/Object;
.source "LazyDirectory.java"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/util/LazyDirectory;->file:Ljava/io/File;

    .line 24
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/sentry/util/LazyDirectory;->file:Ljava/io/File;

    return-object v0
.end method

.method public getOrCreate()Ljava/io/File;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/sentry/util/LazyDirectory;->file:Ljava/io/File;

    invoke-static {v0}, Lio/sentry/util/FileUtils;->createDirectory(Ljava/io/File;)Z

    .line 36
    iget-object v0, p0, Lio/sentry/util/LazyDirectory;->file:Ljava/io/File;

    return-object v0
.end method
