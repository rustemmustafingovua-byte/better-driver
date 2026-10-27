.class public Lf8/f3;
.super Lf8/h3;
.source "SourceFile"


# static fields
.field public static final e:Lf8/f3;


# instance fields
.field public final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/f3;

    invoke-direct {v0}, Lf8/f3;-><init>()V

    sput-object v0, Lf8/f3;->e:Lf8/f3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lf8/h3;->c:Lf8/h3;

    invoke-direct {p0, v0}, Lf8/h3;-><init>(Lf8/h3;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lf8/f3;->d:Ljava/util/Map;

    return-void
.end method
