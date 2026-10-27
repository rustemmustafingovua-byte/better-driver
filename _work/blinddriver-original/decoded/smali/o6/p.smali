.class public abstract Lo6/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final l:Lt6/p;

.field public final m:Lb6/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lo6/p;-><init>(Lb6/l;Lt6/p;)V

    return-void
.end method

.method public constructor <init>(Lb6/l;Lt6/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lo6/p;->m:Lb6/l;

    .line 4
    iput-object p2, p0, Lo6/p;->l:Lt6/p;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract d(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract e(Lb6/i;Ljava/lang/String;)Lb6/l;
.end method
