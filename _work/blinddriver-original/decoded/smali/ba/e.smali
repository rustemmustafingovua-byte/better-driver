.class public final Lba/e;
.super Lba/h;
.source "SourceFile"


# static fields
.field public static final o:Lba/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lba/e;

    sget v2, Lba/k;->c:I

    sget v3, Lba/k;->d:I

    sget-wide v4, Lba/k;->e:J

    sget-object v6, Lba/k;->a:Ljava/lang/String;

    invoke-direct {v0}, Lu9/p;-><init>()V

    new-instance v1, Lba/c;

    invoke-direct/range {v1 .. v6}, Lba/c;-><init>(IIJLjava/lang/String;)V

    iput-object v1, v0, Lba/h;->n:Lba/c;

    sput-object v0, Lba/e;->o:Lba/e;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dispatchers.Default cannot be closed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Default"

    return-object p0
.end method
