.class public final Lj6/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lj6/d0;


# instance fields
.field public final a:Lb6/i0;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/Class;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lj6/d0;

    sget-object v1, Lb6/i0;->p:Lb6/i0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lj6/d0;-><init>(Lb6/i0;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V

    sput-object v0, Lj6/d0;->f:Lj6/d0;

    return-void
.end method

.method public constructor <init>(Lb6/i0;Ljava/lang/Class;Ljava/lang/Class;ZLjava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/d0;->a:Lb6/i0;

    iput-object p2, p0, Lj6/d0;->d:Ljava/lang/Class;

    iput-object p3, p0, Lj6/d0;->b:Ljava/lang/Class;

    iput-boolean p4, p0, Lj6/d0;->e:Z

    if-nez p5, :cond_0

    const-class p5, Lr5/h1;

    :cond_0
    iput-object p5, p0, Lj6/d0;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectIdInfo: propName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj6/d0;->a:Lb6/i0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/d0;->d:Ljava/lang/Class;

    invoke-static {v1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", generatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj6/d0;->b:Ljava/lang/Class;

    invoke-static {v1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alwaysAsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lj6/d0;->e:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
