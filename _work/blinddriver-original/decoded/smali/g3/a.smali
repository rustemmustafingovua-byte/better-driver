.class public final Lg3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lg3/a;

.field public static final c:Lg3/a;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lg3/h;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lg3/a;->c:Lg3/a;

    sput-object v1, Lg3/a;->b:Lg3/a;

    return-void

    :cond_0
    new-instance v0, Lg3/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg3/a;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg3/a;->c:Lg3/a;

    new-instance v0, Lg3/a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg3/a;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Lg3/a;->b:Lg3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/a;->a:Ljava/lang/Throwable;

    return-void
.end method
