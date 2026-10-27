.class public abstract Leb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg5/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg5/i;

    const-class v1, Leb/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lg5/i;-><init>(I)V

    const-string v2, "org.apache.xmlgraphics.image.codec.Messages"

    iput-object v2, v0, Lg5/i;->m:Ljava/lang/Object;

    iput-object v1, v0, Lg5/i;->n:Ljava/lang/Object;

    sput-object v0, Leb/c;->a:Lg5/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Leb/c;->a:Lg5/i;

    invoke-virtual {v0, p0}, Lg5/i;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method
