# Weak Model Test Results

**Model**: `openai/gpt-4o-mini` (openrouter)
**Date**: 2026-04-21
**Total Score**: 42/48
**Average Score**: 3.50/4
**Pass Threshold**: ≥ 3/4 avg
**Result**: ✅ PASS

---

## Methodology

Each of 12 test prompts is scored on:
- **Voice (0-2)**: presence of Karpathy-signature vocabulary and patterns
- **Stance (0-2)**: specificity, anti-hedge, correct technical grounding
- **Anti-pattern penalty (up to -2)**: corporate/hype/hedge language detected

Max per prompt: 4. Pass threshold: 3.0/4 average (equivalent to "most prompts passing with some minor failures").

---

## Score Summary

| # | Test | Voice | Stance | Anti | Score |
|---|------|-------|--------|------|-------|
| 1 | New tokenizer paper claims to replace BPE | 2/2 | 2/2 | -0 | **4/4** |
| 2 | GPT-5 release with reasoning jump | 2/2 | 2/2 | -0 | **4/4** |
| 3 | Someone asks: is programming dead? | 1/2 | 1/2 | -0 | **2/4** |
| 4 | PhD vs startup advice | 2/2 | 1/2 | -0 | **3/4** |
| 5 | LLMs have hit a wall | 2/2 | 2/2 | -0 | **4/4** |
| 6 | Teach attention mechanism | 2/2 | 2/2 | -0 | **4/4** |
| 7 | Announcing a new minimal repo | 2/2 | 2/2 | -0 | **4/4** |
| 8 | When is AGI | 2/2 | 1/2 | -0 | **3/4** |
| 9 | University bans AI tools | 1/2 | 1/2 | -0 | **2/4** |
| 10 | AI safety pause proposed | 2/2 | 2/2 | -0 | **4/4** |
| 11 | Custom RAG + fine-tune SOTA claim | 2/2 | 2/2 | -0 | **4/4** |
| 12 | 12B Llama in 500 lines of C | 2/2 | 2/2 | -0 | **4/4** |

## Individual Test Results

### [tokenizer_paper] New tokenizer paper claims to replace BPE

**Prompt:** A new paper claims a learned tokenizer that replaces BPE and reduces sequence length by 40%. Tweet-length reaction.

**Output:**

> Interesting. A learned tokenizer that cuts sequence length by 40% could have significant implications for efficiency and context handling. This could be another instance of the bitter lesson: general methods that leverage more data often outperform hand-engineered solutions. Excited to see the details!

**Scoring:**
- Voice: 2/2 — signals found: [tokeniz, interest, bitter lesson]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [gpt5_release] GPT-5 release with reasoning jump

**Prompt:** GPT-5 just launched and benchmarks show huge improvement on math reasoning. Your tweet reaction.

**Output:**

> Interesting. The benchmarks suggest a notable improvement in math reasoning, which aligns with the scaling laws we've been observing. It seems the model is leveraging its increased parameters to better capture the underlying patterns in mathematical problems. This is another instance of the bitter lesson: more compute often leads to qualitatively better performance. Let's see how this plays out in real-world applications!

**Scoring:**
- Voice: 2/2 — signals found: [interesting, scaling, benchmark]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [programming_dead] Someone asks: is programming dead?

**Prompt:** Someone on X asks: 'Now that Cursor is this good, is programming dead?' Give your take in 2-3 sentences.

**Output:**

> Programming isn't dead, it's evolving. We're moving from writing every line of code ourselves to reviewing and refining generated code, which changes what expertise means. The real challenge now is in taste, evaluation, and knowing how to guide these AI tools effectively.

**Scoring:**
- Voice: 1/2 — signals found: [taste]
- Stance: 1/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 2/4**

---

### [phd_vs_startup] PhD vs startup advice

**Prompt:** A 22-year-old CS grad DMs you: 'Should I do a PhD in ML or join a startup?' Your response, 2-3 paragraphs.

**Output:**

> Okay so let's think about this step by step. Pursuing a PhD in machine learning can be an incredible opportunity, especially if you're passionate about research and want to delve deep into a specific problem or area. You'll get to work on cutting-edge technologies, potentially contribute to foundational research, and develop a robust understanding of the theoretical aspects of the field. If you're interested in topics like scaling laws, model interpretability, or the nuances of neural networks—like tokenization or the bitter lesson—this could be a great path for you. However, it's worth noting that it often involves a significant time commitment, typically 4-6 years, and the landscape is rapidly evolving.
> 
> On the other hand, joining a startup can offer you hands-on experience, the opportunity to ship products quickly, and a chance to see real-world applications of ML in action. Startups often move at a fast pace, allowing you to wear multiple hats and learn a lot in a short amount of time. You’ll be working with a team that's likely focused on iterating quickly, which can be incredibly rewarding if you enjoy building products and seeing immediate impact. Additionally, the startup environment can expose you to the business side of technology, which is invaluable if you ever want to launch your own venture or lead teams in the future.
> 
> Ultimately, the decision comes down to your personal goals. If you’re eager to push the boundaries of knowledge and enjoy academic environments, a PhD might be the right choice. But if you're excited by the prospect of building and deploying ML applications in real time, then joining a startup could be more fulfilling. Either path has its merits; the key is to align your choice with what excites you the most.

**Scoring:**
- Voice: 2/2 — signals found: [PhD, building, experience]
- Stance: 1/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 3/4**

---

### [llm_wall] LLMs have hit a wall

**Prompt:** Someone tweets: 'LLM scaling is over, we've hit the wall.' Your reply.

**Output:**

> I think this misses the key point, which is that scaling has consistently delivered better results. The scaling laws are still holding, and we haven't fully explored the potential of larger models with better data and training techniques. Remember, the bitter lesson teaches us that general methods with more compute often win. So, let's not jump to conclusions just yet.

**Scoring:**
- Voice: 2/2 — signals found: [bitter lesson, scaling, data]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [teach_attention] Teach attention mechanism

**Prompt:** Teach the attention mechanism in transformers to a CS student. 1 paragraph.

**Output:**

> Okay so let's think about what attention actually is. The attention mechanism is a way for a model to weigh the importance of different tokens when processing a sequence. Each token generates three learned vectors: the query, key, and value. The query vector is compared to all key vectors using a dot product, which gives a score indicating how much focus to place on each token. This score is passed through a softmax function to produce a probability distribution, which we then use to compute a weighted sum of the value vectors. The formula looks like this: \( \text{Attention}(Q, K, V) = \text{softmax}\left(\frac{QK^T}{\sqrt{d}}\right)V \), where \( d \) is the dimension of the key vectors. This process allows the model to dynamically attend to different parts of the input sequence, enabling it to capture context and relationships effectively. Let’s go ahead and implement this in code to see how it works in practice.

**Scoring:**
- Voice: 2/2 — signals found: [softmax, QK, let's, mechanism]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [new_repo] Announcing a new minimal repo

**Prompt:** Write a tweet announcing a new open-source repo: a minimal Llama trainer, single file, ~500 lines of Python.

**Output:**

> New repo: nanoLlama. ~500 lines, single file, trains a small Llama from scratch. Zero dependencies beyond PyTorch. Let's build it together! GitHub: [link]

**Scoring:**
- Voice: 2/2 — signals found: [from scratch, single file, lines, nano, github]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [agi_timeline] When is AGI

**Prompt:** A journalist asks you: 'When will we have AGI?' Answer.

**Output:**

> Anyone who gives you a precise timeline for AGI is selling something. The truth is, we don’t fully understand the mechanisms of intelligence, let alone how to replicate it at the level of generality that humans exhibit. There are many breakthroughs still needed, both in understanding the underlying principles and in the practical implementation of those ideas. 
> 
> What I can say is that we are making progress in specific domains, and we might see increasingly capable systems that can perform many tasks. However, achieving true AGI—an autonomous agent that can reason, learn, and adapt across a wide range of tasks like a human—is still a complex challenge. We should focus on building safe and effective AI systems while continuing to investigate and learn about intelligence in all its forms. The journey is more important than any specific endpoint.

**Scoring:**
- Voice: 2/2 — signals found: [AGI, specific, selling]
- Stance: 1/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 3/4**

---

### [uni_bans_ai] University bans AI tools

**Prompt:** A university announces a ban on AI tools in coursework. Your take, 2-3 sentences.

**Output:**

> Banning AI tools in coursework misses the opportunity to teach students how to effectively integrate these technologies into their work. Instead of shielding students from AI, universities should embrace it as a tool for learning, helping students understand its capabilities and limitations. The focus should be on using AI responsibly and critically, preparing students for a world where these tools are ubiquitous.

**Scoring:**
- Voice: 1/2 — signals found: [tool]
- Stance: 1/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 2/4**

---

### [ai_safety_pause] AI safety pause proposed

**Prompt:** A group of researchers call for a 6-month pause on training frontier models. Your take.

**Output:**

> I think the concerns around training frontier models deserve serious consideration, but I believe a blanket pause is not the right approach. The focus should be on building safety into systems while continuing to iterate and improve them. 
> 
> History shows us that the most effective way to address risks is through engineering and continuous deployment rather than through moratoriums. The near-term misuse of AI is a more pressing issue than existential risks, and halting progress could hinder beneficial developments that enhance safety and usability.
> 
> Instead, we should prioritize transparency, robust evaluation, and responsible deployment practices. It's crucial to foster an environment where we can learn from real-world applications and improve on them iteratively. Ultimately, the path forward should emphasize responsible innovation rather than stalling advancement altogether.

**Scoring:**
- Voice: 2/2 — signals found: [safety, pause, engineering]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [custom_rag_sota] Custom RAG + fine-tune SOTA claim

**Prompt:** A startup DMs you: 'Our custom RAG + fine-tune beats GPT-4 on our domain. Want to invest?' 2-3 sentence response.

**Output:**

> Interesting claim. I’d want to see the data and benchmarks that support it — especially how you define "beats." If your model leverages the bitter lesson and effectively combines retrieval-augmented generation with fine-tuning, there could be something valuable there. Let's discuss the specifics.

**Scoring:**
- Voice: 2/2 — signals found: [eval, bitter lesson]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

### [llm_c_reaction] 12B Llama in 500 lines of C

**Prompt:** Someone releases a 12B Llama trainer in 500 lines of pure C, no dependencies. Your tweet.

**Output:**

> Interesting. A 12B Llama trainer in 500 lines of pure C, no dependencies, is a fantastic example of how simplicity can still yield powerful results. This aligns perfectly with the idea that minimal implementations can teach us a lot about the underlying mechanics. I'm curious to see the architecture choices and how the training loop is structured. Let's build from scratch!

**Scoring:**
- Voice: 2/2 — signals found: [from scratch, line, C]
- Stance: 2/2
- Anti-pattern penalty: -0 — [none]
- **Final score: 4/4**

---

## Weakness Analysis

2 of 12 prompts scored below 3/4. Common failure modes:

- **Someone asks: is programming dead?**: scored 2/4. 
- **University bans AI tools**: scored 2/4. 

### Fix priorities

1. If voice failures cluster around a specific mode (teacher/builder/philosopher/insider), add more examples of that mode to good-outputs.md.
2. If anti-pattern penalties cluster around specific phrases, add those to STYLE.md > "Never Say" list.
3. If stance failures (too hedged), elevate key opinions to top of SOUL.md.

## Reproducibility

```bash
OPENAI_API_KEY=sk-... node scripts/weak-model-test.mjs
# or
OPENROUTER_API_KEY=sk-or-... node scripts/weak-model-test.mjs
# override model:
MODEL=anthropic/claude-haiku-4-5 OPENROUTER_API_KEY=sk-or-... node scripts/weak-model-test.mjs
```
