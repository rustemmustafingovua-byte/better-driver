.class public final Lf9/c;
.super Lf9/b;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:[Ljava/io/File;

.field public d:I

.field public e:Z


# virtual methods
.method public final a()Ljava/io/File;
    .locals 5

    iget-boolean v0, p0, Lf9/c;->e:Z

    iget-object v1, p0, Lf9/g;->a:Ljava/io/File;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lf9/c;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lf9/c;->c:[Ljava/io/File;

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lf9/c;->e:Z

    :cond_0
    iget-object v0, p0, Lf9/c;->c:[Ljava/io/File;

    if-eqz v0, :cond_1

    iget v3, p0, Lf9/c;->d:I

    array-length v4, v0

    if-ge v3, v4, :cond_1

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget v1, p0, Lf9/c;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lf9/c;->d:I

    aget-object p0, v0, v1

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lf9/c;->b:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lf9/c;->b:Z

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
