.class public Lf8/h4;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public l:Lf8/o4;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lf8/h4;->l:Lf8/o4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lf8/h4;->l:Lf8/o4;

    return-void
.end method

.method public static a()Lf8/h4;
    .locals 2

    new-instance v0, Lf8/h4;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lf8/h4;
    .locals 2

    new-instance v0, Lf8/h4;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/io/IOException;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    :cond_0
    return-object p0
.end method
