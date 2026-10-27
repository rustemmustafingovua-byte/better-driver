.class public abstract Lla/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lla/z;

.field public static final a:Lla/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lla/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lla/a0;->Companion:Lla/z;

    sget-object v0, Lbb/j;->o:Lbb/j;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lla/x;

    invoke-direct {v1, v0}, Lla/x;-><init>(Lbb/j;)V

    sput-object v1, Lla/a0;->a:Lla/x;

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lla/t;
.end method

.method public abstract c(Lbb/o;)V
.end method
