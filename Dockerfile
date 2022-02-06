FROM vyperlang/vyper

RUN python3 -m pip install --user pipx && \
    python3 -m pipx ensurepath && \
    python3 -m pipx completions && \
    python3 -m pipx install eth-brownie

ENTRYPOINT ["/bin/bash"]