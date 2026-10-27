.class public final Lua/nav/update/ReleaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/update/ReleaseInfo$$serializer;,
        Lua/nav/update/ReleaseInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/update/ReleaseInfo$Companion;

.field public static final j:Lr9/i;

.field public static final k:Lia/r;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lua/nav/update/ReleaseInfo$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/update/ReleaseInfo;->Companion:Lua/nav/update/ReleaseInfo$Companion;

    new-instance v0, Lr9/i;

    const-string v1, "^[0-9a-fA-F]{64}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lua/nav/update/ReleaseInfo;->j:Lr9/i;

    new-instance v0, Lp2/y;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lp2/y;-><init>(I)V

    invoke-static {v0}, Lr5/u0;->b(Li9/c;)Lia/r;

    move-result-object v0

    sput-object v0, Lua/nav/update/ReleaseInfo;->k:Lia/r;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    and-int/lit8 v0, p1, 0x37

    const/4 v1, 0x0

    const/16 v2, 0x37

    if-ne v2, v0, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lua/nav/update/ReleaseInfo;->a:I

    iput-object p3, p0, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/update/ReleaseInfo;->c:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    const/16 p2, 0x1d

    iput p2, p0, Lua/nav/update/ReleaseInfo;->d:I

    goto :goto_0

    :cond_0
    iput p5, p0, Lua/nav/update/ReleaseInfo;->d:I

    :goto_0
    iput-object p6, p0, Lua/nav/update/ReleaseInfo;->e:Ljava/lang/String;

    iput-object p7, p0, Lua/nav/update/ReleaseInfo;->f:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_1

    const-string p2, ""

    iput-object p2, p0, Lua/nav/update/ReleaseInfo;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p8, p0, Lua/nav/update/ReleaseInfo;->g:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2

    const/4 p2, 0x0

    iput p2, p0, Lua/nav/update/ReleaseInfo;->h:I

    goto :goto_2

    :cond_2
    iput p9, p0, Lua/nav/update/ReleaseInfo;->h:I

    :goto_2
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_3

    iput-object v1, p0, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;

    return-void

    :cond_3
    iput-object p10, p0, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;

    return-void

    :cond_4
    sget-object p0, Lua/nav/update/ReleaseInfo$$serializer;->INSTANCE:Lua/nav/update/ReleaseInfo$$serializer;

    invoke-virtual {p0}, Lua/nav/update/ReleaseInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lua/nav/update/ReleaseInfo;->a:I

    if-gtz v0, :cond_0

    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0438\u0439 versionCode"

    return-object p0

    :cond_0
    iget-object v0, p0, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "\u041f\u043e\u0440\u043e\u0436\u043d\u044f \u043d\u0430\u0437\u0432\u0430 \u0432\u0435\u0440\u0441\u0456\u0457"

    return-object p0

    :cond_1
    sget-object v0, Lua/nav/update/ReleaseInfo;->j:Lr9/i;

    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430"

    return-object p0

    :cond_2
    const-string v0, "https://"

    const/4 v1, 0x0

    iget-object v2, p0, Lua/nav/update/ReleaseInfo;->e:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "\u041f\u043e\u0441\u0438\u043b\u0430\u043d\u043d\u044f \u043d\u0430 APK \u043c\u0430\u0454 \u0431\u0443\u0442\u0438 https"

    return-object p0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lua/nav/update/ReleaseInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lt8/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v0, v2

    :cond_4
    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_5

    const-string v2, "\u041d\u0435\u043a\u043e\u0440\u0435\u043a\u0442\u043d\u0430 \u0434\u0430\u0442\u0430 \u0432\u0438\u043f\u0443\u0441\u043a\u0443"

    goto :goto_1

    :cond_5
    iget p0, p0, Lua/nav/update/ReleaseInfo;->d:I

    if-le p0, p1, :cond_6

    const-string p1, "\u0412\u0435\u0440\u0441\u0456\u044f \u043f\u043e\u0442\u0440\u0435\u0431\u0443\u0454 \u043d\u043e\u0432\u0456\u0448\u043e\u0433\u043e Android (SDK "

    const-string v0, ")"

    invoke-static {p0, p1, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    :goto_1
    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/update/ReleaseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/update/ReleaseInfo;

    iget v1, p0, Lua/nav/update/ReleaseInfo;->a:I

    iget v3, p1, Lua/nav/update/ReleaseInfo;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/update/ReleaseInfo;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lua/nav/update/ReleaseInfo;->d:I

    iget v3, p1, Lua/nav/update/ReleaseInfo;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/update/ReleaseInfo;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->f:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/update/ReleaseInfo;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->g:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/update/ReleaseInfo;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lua/nav/update/ReleaseInfo;->h:I

    iget v3, p1, Lua/nav/update/ReleaseInfo;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;

    iget-object p1, p1, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lua/nav/update/ReleaseInfo;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/update/ReleaseInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lua/nav/update/ReleaseInfo;->d:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object v2, p0, Lua/nav/update/ReleaseInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/update/ReleaseInfo;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/update/ReleaseInfo;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lua/nav/update/ReleaseInfo;->h:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReleaseInfo(versionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lua/nav/update/ReleaseInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseDateUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/update/ReleaseInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sha256="

    const-string v2, ", notesUk="

    iget-object v3, p0, Lua/nav/update/ReleaseInfo;->e:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/update/ReleaseInfo;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/update/ReleaseInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minSupportedVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/update/ReleaseInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gatingFromUtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lua/nav/update/ReleaseInfo;->i:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
